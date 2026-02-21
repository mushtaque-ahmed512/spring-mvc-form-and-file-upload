package SpringErrorHandle;



import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {
	
	
	@RequestMapping("/fileform")
	public String  showFileUpload() {
		
		return  "formfile";
	}

	
	@RequestMapping(path = "/uploadimage", method=RequestMethod.POST)
	public String fileupload(@RequestParam("profile") CommonsMultipartFile file ,HttpSession s,Model m) {
		System.out.println("file upload handler");
		
		
		// Information of file 
		
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getContentType());
		System.out.println(file.getSize());
		
		// get the  byte data 
		 byte[] data=file.getBytes();
         String path=s.getServletContext().getRealPath("/")+ "resources" + File.separator + "image"+File.separator+file.getOriginalFilename();		 
		System.out.println(path);
		try {
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(data);
			fos.close();
			m.addAttribute("message", "File uploaded Successfully");
			m.addAttribute("filename", file.getOriginalFilename());
			System.out.println("File uploading ");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("file uploading Error");
			m.addAttribute("message", "File uploadeding Problem");
		}
		
		return "fileSuccess";
	}
	
}
