import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';

void main() {
  testWidgets('Profil, tombol aksi, dan dialog About Me berfungsi', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Enzo Susilo'), findsOneWidget);
    expect(find.text('2506584382'), findsOneWidget);
    expect(find.text('PBP B'), findsOneWidget);

    for (final namaTombol in ['Lihat Proyek', 'Tambah Proyek', 'Logout']) {
      expect(find.text(namaTombol), findsOneWidget);

      await tester.tap(find.text(namaTombol));
      await tester.pumpAndSettle();

      expect(
        find.text('Kamu telah menekan tombol $namaTombol!'),
        findsOneWidget,
      );

      if (namaTombol == 'Tambah Proyek') {
        // Memastikan kartu berhasil membuka form.
        expect(find.text('Add Project Form'), findsOneWidget);

        // Kembali ke halaman utama sebelum menguji tombol berikutnya.
        Navigator.of(
          tester.element(find.byType(Form)),
        ).pop();

        await tester.pumpAndSettle();
      }
    }

    await tester.tap(find.byTooltip('About Me'));
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsOneWidget);

    await tester.tap(find.text('Tutup'));
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsNothing);
  });
}
