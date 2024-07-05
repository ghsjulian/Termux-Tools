import os
import requests
import color

#Clear The Terminal Screen 
os.system("clear")
os.system("figlet -s Image BG | lolcat")
# Set API key and folder path
api_key = 'bb5JaxqTrdnZk9cc5hKFry28'
image_folder = str(input(color.LIGHT_CYAN+color.BOLD+"\n [+] "+color.GREEN+color.BOLD+"Enter Your Image Folder Location  :  "+color.YELLOW+color.BOLD))
count = 1

# Loop through all images in the folder
for filename in os.listdir(image_folder):
    if filename.endswith(('.jpg', '.jpeg', '.png')):
        image_path = os.path.join(image_folder, filename)
        print(color.LIGHT_CYAN+color.BOLD+f"\n [+] Processing Image : {color.GREEN+color.BOLD+filename} \n")

        try:
            # Open the image file using a context manager
            with open(image_path, 'rb') as image_file:
                response = requests.post(
                    'https://api.remove.bg/v1.0/removebg',
                    files={'image_file': image_file},
                    data={'size': 'auto'},
                    headers={'X-Api-Key': api_key},
                )

            if response.status_code == requests.codes.ok:
                # Save the output image
                output_filename = f"No_Bg_Removed_By_Ghs_Julian_{count}.png"
                with open(image_folder+output_filename, 'wb') as out:
                    out.write(response.content)
                print(color.LIGHT_CYAN+color.BOLD+f"\n [-] Output Saved To : {color.YELLOW+color.BOLD+output_filename} \n")
                count += 1
            else:
                print(color.RED+color.BOLD+f"\n [!] Error : {response.status_code} {response.text} \n")
        except requests.RequestException as e:
            print(color.RED+color.BOLD+f"\n [!] Error: {e} \n")
        
os.system("clear")
os.system("figlet -s Saved ! | lolcat")
print(color.LIGHT_CYAN+color.BOLD+f"\n [+] Total {count} Image Saved ! \n")
