<h4><?php echo anchor('user/logout', 'Logout'); ?></h4>
<table border="1" width="60%" height="50%">
            <tr>
                <td>Hall Name</td>
                <td>Hall Locality</td>
                <td>Options</td>
            </tr>
             <tr>
                 <?php for($i=0;$i<count($halls);$i++)
                 {?>
                <td><?php echo $halls[$i]['hall']; ?></td>
                <td><?php echo $halls[$i]['city']; ?></td>
                <?php $id=$halls[$i]['id']; ?>
                <td><?php echo anchor('hall/new_hall/'.$id, 'Edit'); ?> |  <?php echo anchor('hall/delete_hall/'.$id, 'Delete'); ?>   </td>
              </tr>
                 <?php } ?>
            
        </table>  
<table><tr><td><?php echo anchor('user/edit', 'Go To Home'); ?></td></tr></table>