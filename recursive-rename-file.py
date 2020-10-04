import os


def rename_files(directory, replacing_text):
	for filename in os.listdir(directory):
		if(os.path.isdir(os.path.join(directory, filename))):
			rename_files(os.path.join(directory, filename), replacing_text)
		else:
			if filename.endswith(".mp4") or filename.endswith(".srt"):
				if(replacing_text not in filename):
					print(filename)
				else:
					file_path = os.path.join(directory, filename)
					new_file_path = os.path.join(directory, filename.replace(replacing_text, ""))
					os.rename(file_path, new_file_path)
				continue
			else:
				continue

dir_path = r"D:\Course\Deep Learning Course with Flutter & Python - Build 6 AI Apps\Course content"
replacing_text = "---xyz ---"
rename_files(dir_path, replacing_text)

