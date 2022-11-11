> Utilisation

> declare 
INPUT_BO i = INPUT_BO(
    label: 'Login',
    width: 300,
    isHaveSuffix: true,
    suffixAction: () {},
    prefixIcon: Icons.person,
    color: Colors.yellow,
  );

  <!-- PASSWORD -->
    INPUT_BO inputMdp = INPUT_BO(
    label: 'Mdp',
    width: 300,
    isMotDePasse: true,   << this
    suffixAction: () {},
    prefixIcon: Icons.key,
    bg_color: Colors.red,
    shadow_color: Colors.green,
    color: Colors.deepPurple,
  );

  > Set action 
    funct() {
        print('--------');
    }

  i.setSuffixAction(funct);
  i.setActionOnChangeValue(funct);

  > get Value
  String mdp = i.getValue();