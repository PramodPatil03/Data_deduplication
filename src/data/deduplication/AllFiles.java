package data.deduplication;

import static data.deduplication.AdminHome.UploadFileStatus;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Toolkit;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import javax.swing.table.DefaultTableModel;
import utils.DBConnector;
import utils.DbHelper;
import utils.FileOperations;

public class AllFiles extends javax.swing.JFrame {
    private DbHelper dbHelper;
    private ViewFileDetails viewFileDetails;
    private JFileChooser chooser;
    private String choosertitle;
    private FileOperations fileOperations;
    private Connection con;
    private PreparedStatement s=null;
    public AllFiles() {
        super("Cloud Data Deduplication - All Files");
        initComponents();
        scaleImages();
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        this.setExtendedState(JFrame.MAXIMIZED_BOTH);
        
        dbHelper = new DbHelper();
        String[] tableColumnNames = {"Index", "File Name", "Directory","Owner"};
        AllFilesTable.setModel(new DefaultTableModel(dbHelper.getAllFilesTableData(), tableColumnNames));
        AllFilesTable.getColumnModel().getColumn(0).setMaxWidth(50);
        AllFilesTable.setDefaultEditor(Object.class, null);
        AllFilesTable.setRowSelectionAllowed(true);
        AllFilesTable.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        AllFilesTable.setRowSelectionInterval(0, 0);
    }
    public void scaleImages(){
        
        ImageIcon download = new ImageIcon("D:\\8th\\Project\\FInal project\\Data Deduplication\\Images\\Download.png");
        ImageIcon delete = new ImageIcon("D:\\8th\\Project\\FInal project\\Data Deduplication\\Images\\Trash.png");
        
        Image imgDown = download.getImage();
        Image imgTrash = delete.getImage();
        Image imageScaleDown  = imgDown.getScaledInstance(30, 30, Image.SCALE_SMOOTH);
        Image imageScaleTrash  = imgTrash.getScaledInstance(30, 30, Image.SCALE_SMOOTH);
        ImageIcon down = new ImageIcon(imageScaleDown);
        ImageIcon trash = new ImageIcon(imageScaleTrash);
        downloadButton.setIcon(down);
        dltButton.setIcon(trash);
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        AllFilesTable = new javax.swing.JTable();
        viewButton = new javax.swing.JButton();
        downloadButton = new javax.swing.JButton();
        dltButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        AllFilesTable.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        AllFilesTable.setForeground(new java.awt.Color(51, 0, 255));
        AllFilesTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {},
            new String [] {
                "Index", "File Name", "Directory"
            }
        ));
        AllFilesTable.setRowHeight(24);
        jScrollPane1.setViewportView(AllFilesTable);

        viewButton.setText("View");
        viewButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                viewButtonActionPerformed(evt);
            }
        });

        downloadButton.setText("Download");
        downloadButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                downloadButtonActionPerformed(evt);
            }
        });

        dltButton.setText("Delete");
        dltButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dltButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 650, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addComponent(viewButton)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(downloadButton)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(dltButton)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 305, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(viewButton)
                    .addComponent(downloadButton)
                    .addComponent(dltButton))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void viewButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_viewButtonActionPerformed
        int row = AllFilesTable.getSelectedRow();
        String value = AllFilesTable.getModel().getValueAt(row, 2).toString();
        
        viewFileDetails = new ViewFileDetails(value);
        viewFileDetails.show();
    }//GEN-LAST:event_viewButtonActionPerformed

    private void downloadButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_downloadButtonActionPerformed
        fileOperations = new FileOperations();
        int row = AllFilesTable.getSelectedRow();
        String value = AllFilesTable.getModel().getValueAt(row, 2).toString();
        fileOperations.downloadFile(value);
    }//GEN-LAST:event_downloadButtonActionPerformed

    private void dltButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dltButtonActionPerformed
        // TODO add your handling code here:
        String sql;
                con=DBConnector.getConnection();
                if(DataDeduplication.userName.equals("admin")){
                         sql = "delete from chunks_information where file_directory = '"+AllFilesTable.getValueAt(AllFilesTable.getSelectedRow(), 2) +"'";
                }else{
         sql = "delete from chunks_information where file_directory = '"+AllFilesTable.getValueAt(AllFilesTable.getSelectedRow(), 2) +"' and userName = '"+DataDeduplication.userName+"' ";
                }
        System.out.println(AllFilesTable.getValueAt(AllFilesTable.getSelectedRowCount(), 1));
        try{
            s =con.prepareStatement(sql);
            s.execute();
            con.close();
            DefaultTableModel tblModel = (DefaultTableModel) AllFilesTable.getModel();
            if(AllFilesTable.getSelectedRowCount() == 1){
                tblModel.removeRow(AllFilesTable.getSelectedRow());
            }
            else{
                if(AllFilesTable.getSelectedRowCount() == 0){
                    JOptionPane.showMessageDialog(this, "Table is empty");
                }
                else{
                    JOptionPane.showMessageDialog(this, "Something went wrong");
                }
           }
        }catch(SQLException e){
            System.out.print(e.getMessage());
        }
    }//GEN-LAST:event_dltButtonActionPerformed

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
            java.util.logging.Logger.getLogger(AllFiles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AllFiles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AllFiles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AllFiles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AllFiles().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable AllFilesTable;
    private javax.swing.JButton dltButton;
    private javax.swing.JButton downloadButton;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton viewButton;
    // End of variables declaration//GEN-END:variables
}
