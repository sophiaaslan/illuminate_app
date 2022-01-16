import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1.png")),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, -0.25), //Contraceptives
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Contraceptives()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, -0.27), //Menstruation
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Menstruation'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menstruation()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, 0.07), //Health
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Health()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, 0.07), //Relationships
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Relationships()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, 0.41), //Clinic Locator
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ClinicLocator()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, 0.41), //Q&A
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Questions()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Menstruation extends StatelessWidget {
  const Menstruation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menstruation'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/menstruation_homepage.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.74), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, -0.2), //Period product quiz
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, -0.2), //Period products
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Period products'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PeriodProducts()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, 0.25), //Cycles
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Cycles'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cycles()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, 0.25), //Late Period
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('LatePeriod'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LatePeriod()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PeriodProducts extends StatelessWidget {
  const PeriodProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Period Products'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/period_products.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menstruation()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cycles extends StatelessWidget {
  const Cycles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cycles'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/cycles.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menstruation()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LatePeriod extends StatelessWidget {
  const LatePeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Late Period'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/late_period.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menstruation()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menstruation'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/health_homepage.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.74), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, -0.32), //Gynecologist quiz
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, -0.32), // Breast exam
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BreastExam()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.15, 0), //Vaginal hygiene
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Vaginal Hygiene'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VagHygiene()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.15, 0), //Abortion
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Abortion'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Abortion()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.3), //STDs
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('LatePeriod'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const STDs()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VagHygiene extends StatelessWidget {
  const VagHygiene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vaginal Hygiene'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/vaginal_hygiene.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Health()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Abortion extends StatelessWidget {
  const Abortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abortion'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/abortion.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Health()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class STDs extends StatelessWidget {
  const STDs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STDs'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/stds.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Health()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BreastExam extends StatelessWidget {
  const BreastExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breast Exam'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/breast_exam1.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0.3, 0.95), //Next page of breast exam
            child: Opacity(
              opacity: 1.0,
              child: ElevatedButton(
                child: const Text('NEXT >'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BreastExamNext()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BreastExamNext extends StatelessWidget {
  const BreastExamNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breast Exam'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/breast_exam2.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Go back!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Health()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Relationships extends StatelessWidget {
  const Relationships({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relationships'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/relationships_homepage.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.74), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.2), //Consent
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Consent()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.15), //Love quiz
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Consent extends StatelessWidget {
  const Consent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consent'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/consent1.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0.3, 0.95), //Next page of breast exam
            child: Opacity(
              opacity: 1.0,
              child: ElevatedButton(
                child: const Text('NEXT >'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ConsentNext()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ConsentNext extends StatelessWidget {
  const ConsentNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consent Next'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/consent2.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Go back!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Relationships()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Contraceptives extends StatelessWidget {
  const Contraceptives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contraceptives'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home_c.png")),
            ),
          ),
          Align( // birth control types
            alignment: Alignment(0.14, 0.35),
            child: FlatButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_birth_control_types()),
                );
              },
            ),
          ),
          Align( // unprotected sex
            alignment: Alignment(0.14, 0),
            child: FlatButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_unprotected_sex()),
                );
              },
            ),
          ),
          Align( // condom broke
            alignment: Alignment(-0.14, 0),
            child: FlatButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_condom_broke()),
                );
              },
            ),
          ),
          Align( // condom instructions
            alignment: Alignment(0.14, -0.35),
            child: FlatButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_condom_instr()),
                );
              },
            ),
          ),
          Align( // trans ppl
            alignment: Alignment(-0.14, 0.35),
            child: FlatButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_trans_ppl()),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}

class C_birth_control_types extends StatelessWidget {
  const C_birth_control_types({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birth Control'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/birth_control_types.png")),
            ),
          ),


        ],
      ),
    );
  }
}

class C_unprotected_sex extends StatelessWidget {
  const C_unprotected_sex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unprotected Sex'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/unprotected.png")),
            ),
          ),
        ],
      ),
    );
  }
}

class C_condom_broke extends StatelessWidget {
  const C_condom_broke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Condom Broke...'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/condom_broke.png")),
            ),
          ),
        ],
      ),
    );
  }
}

class C_condom_instr extends StatelessWidget {
  const C_condom_instr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Condom Instructions'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/condom_instr_1.png")),
            ),
          ),
          Align( // next page
            alignment: Alignment(0.25, 0.9),
            child: FlatButton(
              child: const Text('NEXT'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_condom_broke_2()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class C_condom_broke_2 extends StatelessWidget {
  const C_condom_broke_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Condom Broke...'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/condom_instr_2.png")),
            ),
          ),
          Align( // next page
            alignment: Alignment(0.25, 0.9),
            child: FlatButton(
              child: const Text('NEXT'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_condom_broke_3()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class C_condom_broke_3 extends StatelessWidget {
  const C_condom_broke_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Condom Broke...'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/condom_instr_3.png")),
            ),
          ),

        ],
      ),
    );
  }
}

class C_trans_ppl extends StatelessWidget {
  const C_trans_ppl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help for Trans/Non Binary'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/trans_ppl_1.png")),
            ),
          ),
          Align( // next page
            alignment: Alignment(0.25, 0.9),
            child: FlatButton(
              child: const Text('NEXT'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const C_trans_ppl_2()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class C_trans_ppl_2 extends StatelessWidget {
  const C_trans_ppl_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help for Trans/Non-Binary'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/trans_ppl_2.png")),
            ),
          ),

        ],
      ),
    );
  }
}

class ClinicLocator extends StatelessWidget {
  const ClinicLocator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinic Locator'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/clinic_locator.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/questions_home.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.74), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.3), //Mythbusters
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mythbusters()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.27), //Input questions
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Input()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mythbusters extends StatelessWidget {
  const Mythbusters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mythbusters'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/mythbusters.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Go back!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Questions()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
      ),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/input.png")),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9), //Back to home
            child: Opacity(
              opacity: 0.0,
              child: ElevatedButton(
                child: const Text('Go back!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Questions()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
