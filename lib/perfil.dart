import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil Profesional',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PerfilProfesional(),
    );
  }
}

class PerfilProfesional extends StatefulWidget {
  const PerfilProfesional({super.key});

  @override
  PerfilProfesionalState createState() => PerfilProfesionalState();
}

class PerfilProfesionalState extends State<PerfilProfesional> {
  int _likes = 45;

  void _incrementLikes() {
    setState(() {
      _likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SizedBox(
          width: 300,
          height: 500,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.blue[100],
                        backgroundImage: const NetworkImage(
                          'https://scontent.fsti6-1.fna.fbcdn.net/v/t1.6435-9/123336779_1773996616084193_3824148138467384637_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF41Eb4OSieh3LMUN_SXZIEr15IMuzAodWvXkgy7MCh1XS6bfW1CdVbjZtVsvI-LDJY9BNx6Both8ILnzjbO2_s&_nc_ohc=5GmtqG-iEdUQ7kNvgESPIJG&_nc_zt=23&_nc_ht=scontent.fsti6-1.fna&_nc_gid=At5G5RxnOdlopaStwd1dXWB&oh=00_AYAyuUGqnREu26l36cZTv7n31wzJALFd_2M1ef-boe3_9A&oe=675341E6',
                        ),
                      ),
                      const Positioned(
                        right: 0,
                        bottom: 0,
                        child: Icon(Icons.check_circle,
                            color: Colors.blue, size: 24),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Michel Ovalle',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Desarrolladora Flutter',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: _incrementLikes,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite, color: Colors.red),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '$_likes',
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      _buildSkillChip('Flutter'),
                      _buildSkillChip('Dart'),
                      _buildSkillChip('Python'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.message, color: Colors.grey[600]),
                      Icon(Icons.person, color: Colors.grey[600]),
                      Icon(Icons.photo_camera, color: Colors.grey[600]),
                      Icon(Icons.date_range, color: Colors.grey[600]),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text('Contactar'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text('CV'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInfoColumn('3', 'Proyectos'),
                      _buildInfoColumn('1,932', 'Seguidores'),
                      _buildInfoColumn('6.9', 'Rating'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildSkillChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue[50],
    );
  }

  static Widget _buildInfoColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}
