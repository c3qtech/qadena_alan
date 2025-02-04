import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:dart_pdf_reader/dart_pdf_reader.dart';
import 'package:test/test.dart';

Future<List<String>?> extractContents(String pdfFileName) async {
  // Open the PDF file
  final file = File(pdfFileName);

  if (!file.existsSync()) {
    print('PDF file not found at $pdfFileName');
    return null;
  }

  final stream = ByteStream(file.readAsBytesSync());

  // Parse the PDF document
  final doc = await PDFParser(stream).parse();

  final catalog = await doc.catalog;
  final pages = await catalog.getPages();

  List<String> contents = [];

  // Loop through the pages
  for (int i = 0; i < pages.pageCount; i++) {
    final page = pages.getPageAtIndex(i);
    print('Page $i: $page');

    // Go through objects of the page
    final contentStreams = await page.contentStreams;

    var pageContent = "";
    for (final stream in contentStreams!) {
      final bytes = await stream.read(page.objectResolver);
      final ubytes = utf8.decode(bytes);
//      print(ubytes);
      pageContent = pageContent + ubytes;
    }
    contents.add(pageContent);
  }

  return contents;
}

void main() {
  test('flatedecode', () {
    // Example of FlateDecode compressed data (zlib format)
    // compress "Hello, World!" using zlib
    final zlib = ZLibCodec();
    final compressed = zlib.encode(utf8.encode(
        '2 J\n0.57 w\nBT /F1 12.00 Tf ET\nBT 232.63 795.77 Td (Sample PDF with fpdf2) Tj ET\nBT /F2 12.00 Tf ET\nBT 263.30 767.42 Td (Hello, World!) Tj ET\n'));
    print(
        compressed); // Output: [120, 156, 75, 202, 201, 87, 40, 201, 204, 77, 85, 200, 72, 78, 45, 72, 73, 44, 73, 5, 0, 30, 65, 4, 19]

    try {
      // Decompress the data using zlib
      final decompressedData = zlib.decode(compressed);

      // Convert the decompressed data to a string (if it's text)
      final result = utf8.decode(decompressedData);
      print('Decompressed Data: $result'); // Output: Hello, World!
    } catch (e) {
      print('Error decompressing data: $e');
    }
  });

  test('extractHelloMultipleContentsPDF', () async {
    // Path to your PDF file
    final filePath = 'test_data/hello_multiple.pdf';

    final contents = await extractContents(filePath);

    final expectedContents = [
      "BT\n/F1 24 Tf\n100 700 Td\n(Hello, Stream 1!) Tj\nETBT\n/F1 18 Tf\n100 650 Td\n(This is Stream 2!) Tj\nET"
    ];

/*
    // print expectedContents in hex
    for (var content in expectedContents) {
      final bytes = utf8.encode(content);
      final hexString = hex.encode(bytes);
      print('Content(e) in Hex: $hexString');
    }

    // print contents in hex
    for (var content in contents!) {
      final bytes = utf8.encode(content);
      final hexString = hex.encode(bytes);
      print('Content(a) in Hex: $hexString');
    }


    if (contents != null) {
      // loop through contents
      for (int i = 0; i < contents!.length; i++) {
        // print
        print(contents[i]);
      }
    }
    */

    expect(contents, expectedContents, 
        reason: 'contents = $contents; want $expectedContents');
  });

test('extractHelloContentsPDF', () async {
    // Path to your PDF file
    final filePath = 'test_data/hello.pdf';

    final contents = await extractContents(filePath);

    final expectedContents = [
      '2 J\n0.57 w\nBT /F1 12.00 Tf ET\nBT 232.63 795.77 Td (Sample PDF with fpdf2) Tj ET\nBT /F2 12.00 Tf ET\nBT 263.30 767.42 Td (Hello, World!) Tj ET\n'
    ];

    expect(contents, expectedContents, 
        reason: 'contents = $contents; want $expectedContents');
  });

test('extractHelloImageContentsPDF', () async {
    // Path to your PDF file
    final filePath = 'test_data/hello_image.pdf';

    final contents = await extractContents(filePath);

    final expectedContents = [
      "2 J\n0.57 w\nBT /F1 12.00 Tf ET\nBT 226.62 795.77 Td (PDF with Text and Image) Tj ET\nBT /F2 12.00 Tf ET\nBT 263.30 767.42 Td (Hello, World!) Tj ET\nq 566.93 0 0 566.93 141.73 133.23 cm /I1 Do Q\nBT /F3 8.00 Tf ET\nBT 284.96 25.95 Td (Page 1) Tj ET\n"
    ];

    expect(contents, expectedContents, 
        reason: 'contents = $contents; want $expectedContents');
  });

}





