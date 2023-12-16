package com.example.board;/*package com.example.board;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileUpload {
    public BoardVO uploadPhoto(HttpServletRequest request) throws Exception {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String filename = "";
        int sizeLimit = 15 * 1024 * 1024;

        String realPath = request.getSession().getServletContext().getRealPath("img");

        File dir = new File(realPath);
        if (!dir.exists()) dir.mkdirs();

        BoardVO one = null;
        MultipartRequest multipartRequest = null;

        try {
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

            filename = multipartRequest.getFilesystemName("photo");

            one = new BoardVO();
            String seq = multipartRequest.getParameter("seq");
            if (seq != null && !seq.equals("")) one.setSeq(Integer.parseInt(seq));
            one.setTitle(multipartRequest.getParameter("title"));
            one.setCategory(multipartRequest.getParameter("category"));
            one.setWriter(multipartRequest.getParameter("writer"));
            one.setContent(multipartRequest.getParameter("content"));
            one.setStar(Double.parseDouble(multipartRequest.getParameter("star")));
            one.setYear(dateFormat.parse(multipartRequest.getParameter("Year")));
            one.setRegdate(dateFormat.parse(multipartRequest.getParameter("regdate")));
            one.setActor(multipartRequest.getParameter("actor"));

            if (seq != null && !seq.equals("")) {
                BoardDAO dao = new BoardDAO();
                String oldfilename = dao.getPhotoFilename(Integer.parseInt(seq));
                if (filename != null && oldfilename != null) {
                    FileUpload.deleteFile(request, oldfilename);
                } else if (filename == null && oldfilename != null) {
                    filename = oldfilename;
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return one;
    }

    public static void deleteFile(HttpServletRequest request, String filename){
        String filePath = request.getSession().getServletContext().getRealPath("img");

        File f = new File(filePath+"/"+filename);
        if(f.exists()) f.delete();
    }
}
*/