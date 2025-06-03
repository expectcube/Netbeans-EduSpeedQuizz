import java.util.Scanner;

class Player {
    String name;
    int score;
}

public class LeaderboardApp {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Berapa jumlah pemain? : ");
        int jumlah = scanner.nextInt();
        scanner.nextLine(); // buang newline

        Player[] orang = new Player[jumlah];

        // Input data pemain
        for (int i = 0; i < jumlah; i++) {
            orang[i] = new Player(); // buat objek kosong
            System.out.println("\nPemain ke-" + (i + 1));
            System.out.print("Username: ");
            orang[i].name = scanner.nextLine();
            System.out.print("Score: ");
            orang[i].score = scanner.nextInt();
            scanner.nextLine(); // buang newline
        }

        // Sorting berdasarkan skor (insertion sort descending)
			for (int i = 1; i < orang.length; i++)   {
				Player temp = orang[i];
				int j=i;
				while( (j>0) && (temp.score > orang[j - 1].score ) ) {
					orang[j] = orang[j - 1];
					j--;
				}
				orang[j]=temp;
			}

        // Tampilkan leaderboard
        System.out.println("\n=== [Leaderboard Top Global] ===");
        for (int i = 0; i < orang.length; i++) {
            System.out.println((i + 1) + ". " + orang[i].name + " - " + orang[i].score);
        }

        // Pencarian pemain
        System.out.print("\nCari pemain berdasarkan nama: ");
        String cariNama = scanner.nextLine();
        boolean ditemukan = false;

        for (int i = 0; i < orang.length; i++) {
            if (orang[i].name.equals(cariNama)) {
                System.out.println("Ditemukan: " + orang[i].name + " dengan skor " + orang[i].score);
                System.out.println("Peringkat: " + (i + 1));
                ditemukan = true;
                break;
            }
        }

        if (!ditemukan) {
            System.out.println("Pemain dengan nama '" + cariNama + "' tidak ditemukan.");
        }

        scanner.close();
    }
}
