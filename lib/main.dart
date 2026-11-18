import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const DonDeguApp());
}

class DonDeguApp extends StatelessWidget {
  const DonDeguApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Don Degu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // THEMEDATA IS HERE
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        scaffoldBackgroundColor: const Color(0xFFFFF3E0),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFF3E0),
          centerTitle: true,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 18),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
          labelSmall: TextStyle(fontSize: 12),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Don Degu'),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/DonDegu.jpeg',
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'A Czech companion',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                "Let's talk about Czech!",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.brown[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  _MenuButton(label: 'Chat', icon: Icons.chat_bubble_outline),
                  _MenuButton(label: 'Review', icon: Icons.rate_review_outlined),
                  _MenuButton(label: 'Watch', icon: Icons.play_circle_outline),
                  _MenuButton(label: 'Settings', icon: Icons.settings_outlined),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const _MenuButton({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 48,
                  color: Colors.brown[700],
                ),
                const SizedBox(height: 12),
                Text(
                  label,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
