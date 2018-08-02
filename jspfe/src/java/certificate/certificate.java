package certificate;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.security.cert.X509Certificate;
import java.util.logging.Level;
import java.util.logging.Logger;
public class certificate {
        public static void POST() throws IOException{
     TrustManager[] trustAllCerts = new TrustManager[] {new X509TrustManager() {
                @Override
                public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
                @Override
                public void checkClientTrusted(X509Certificate[] certs, String authType) {
                }
                @Override
                public void checkServerTrusted(X509Certificate[] certs, String authType) {
                }
                }
                };
 
                // Install the all-trusting trust manager
                SSLContext sc = null;
                try {
                sc = SSLContext.getInstance("SSL");
                } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(certificate.class.getName()).log(Level.SEVERE, null, ex);
                }
                try {
                sc.init(null, trustAllCerts, new java.security.SecureRandom());
                } catch (KeyManagementException ex) {
                Logger.getLogger(certificate.class.getName()).log(Level.SEVERE, null, ex);
                }
                HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
 
                // Create all-trusting host name verifier
                HostnameVerifier allHostsValid = (String hostname, SSLSession session) -> true;
 
                // Install the all-trusting host verifier
                HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
       

       
}
}