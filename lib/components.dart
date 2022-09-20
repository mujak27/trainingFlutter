
              SwitchListTile(
                value: theme == EnumTheme.light ? true : false, 
                onChanged: (value)=>{
                  setState(switchTheme)
                }
              ),


  

              PasswordField(
                controller: passwordController,
                hintText: "",
                errorMessage: "",
                
              ),

              
      showDialog(
        context: context, 
        builder: (context){
          return AlertDialog(
            text: const Text("error"),
            content: const Text("data"),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text("close")
              )
            ],
            backgroundColor: Colors.blueAccent,
          );
        }
      )