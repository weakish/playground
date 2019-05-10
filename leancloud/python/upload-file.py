import leancloud
import logging

logging.basicConfig(level=logging.DEBUG)

leancloud.init("3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz", "P8cKdEvRxusfuR27MuhvFOzr")

with open('JBL-GO2-QSG_Multilingual_HD.pdf') as f:
    test_upload_text_file = leancloud.File('fileFromLocalFile', f)
    test_upload_text_file.save()