#!/usr/bin/env python

import common

def WriteRawImage(self, mount_point, fn):
    """
    WriteRawImage from mtk branch.
    Write the given package file into the partition for the given mount point.
    """
    print "releasetools.py: WriteRawImage for mtk platform, fn:%s, mount_point:%s" % (fn, mount_point)
    edifyGenerator = self.script

    fstab = edifyGenerator.info["fstab"]
    if fstab:
      p = fstab[mount_point]
      partition_type = common.PARTITION_TYPES[p.fs_type]
      args = {'device': p.device, 'fn': fn}
      if partition_type == "MTD":
        edifyGenerator.script.append(
            'write_raw_image(package_extract_file("%(fn)s"), "%(device)s");'
            % args)
      elif partition_type == "EMMC":
        if fn == "boot.img" and p.device == "boot":
          edifyGenerator.script.append(
            ('assert(package_extract_file("%(fn)s", "/tmp/%(fn)s"),\n'
             '       write_raw_image("/tmp/%(fn)s", "bootimg"),\n'
             '       delete("/tmp/%(fn)s"));') % args)

        else:
          edifyGenerator.script.append(
              'package_extract_file("%(fn)s", "%(device)s");' % args)
      else:
        raise ValueError("don't know how to write \"%s\" partitions" % (p.fs_type,))
    return True
