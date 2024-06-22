package data.deduplication;

import java.awt.Dimension;
import java.awt.Image;
import java.awt.Toolkit;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class DataDeduplication extends javax.swing.JFrame {
    private AdminHome adminHome;
    public static String userName;
    private UserHome userHome;
    public DataDeduplication() {
        super("Cloud Data Deduplication - Login");
        initComponents();
        scaleImage();
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        username = new javax.swing.JTextField();
        password = new javax.swing.JPasswordField();
        LoginButton = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        background = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(51, 204, 255));
        setMinimumSize(new java.awt.Dimension(400, 400));
        setResizable(false);
        setSize(new java.awt.Dimension(400, 400));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        username.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                usernameActionPerformed(evt);
            }
        });
        getContentPane().add(username, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 130, 168, -1));
        getContentPane().add(password, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 160, 168, -1));

        LoginButton.setText("Login");
        LoginButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                LoginButtonActionPerformed(evt);
            }
        });
        getContentPane().add(LoginButton, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 190, 89, -1));

        jLabel2.setBackground(new java.awt.Color(43, 43, 42));
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(179, 203, 242));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Login");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 100, 144, -1));

        background.setIcon(new javax.swing.ImageIcon(getClass().getResource("/data/deduplication/back2.jpg"))); // NOI18N
        getContentPane().add(background, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 500, 500));

        pack();
    }// </editor-fold>//GEN-END:initComponents
 public void scaleImage(){
        ImageIcon upload = new ImageIcon("D:\\8th\\Project\\FInal project\\Data Deduplication\\Images\\back2.jpg");
        Image imgUp = upload.getImage();
        Image imageScaleUp  = imgUp.getScaledInstance(background.getWidth() , background.getHeight(), Image.SCALE_SMOOTH);
        ImageIcon up = new ImageIcon(imageScaleUp);
        background.setIcon(up);
    }
    private void usernameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_usernameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_usernameActionPerformed

    private void LoginButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_LoginButtonActionPerformed
        if(username.getText().isEmpty())
        JOptionPane.showMessageDialog(this, "Please enter a username");
        else if(password.getText().isEmpty())
        JOptionPane.showMessageDialog(this, "Please enter a password");
        else{
            if(username.getText().equals("admin") && password.getText().equals("admin")){
                userName = "admin";
                adminHome = new AdminHome();
                adminHome.show();
                this.dispose();

            }
            else if(username.getText().equals("pramod") && password.getText().equals("1234")){
                userName = "pramod";
                adminHome = new AdminHome();
                adminHome.show();
                this.dispose();
            }
            else if(username.getText().equals("omkar") && password.getText().equals("1234")){
                userName = "omkar";
                adminHome = new AdminHome();
                adminHome.show();
                this.dispose();
            }
            else
            JOptionPane.showMessageDialog(this, "Invalid credentials!");
        }
    }//GEN-LAST:event_LoginButtonActionPerformed

    public static void main(String args[]) {
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(DataDeduplication.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DataDeduplication.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DataDeduplication.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DataDeduplication.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new DataDeduplication().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton LoginButton;
    private javax.swing.JLabel background;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPasswordField password;
    private javax.swing.JTextField username;
    // End of variables declaration//GEN-END:variables
}
