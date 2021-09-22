"""
# Python 3
# 2021-09-22
Author: MasterHowToLearn: https://github.com/MasterHowToLearn
What this script does:
- traversing a list of HTML
- using regex for find and replace
For more please read its accompanying article: https://www.masterhowtolearn.com/2021-09-22-use-this-one-trick-to-find-supermemo-element-location
Credit: the base traverse code is from Xah Lee's http://xahlee.info/python/findreplace_regex.html
"""

import os, datetime, traceback, shutil, re, ntpath

do_backup = True
BACKUP_LOCATION = (
    ""  # string of the directory of where you want to store the backup HTML
)
BACKUP_SUFFIX = "~~"

# Smart single quote
# &#821[67];
# '
smart_single_quote = (
    re.compile(r"&#821[67];", re.U | re.I),
    r"'",
)

# Smart double quote
# &#822[01];
# "
smart_double_quote = (
    re.compile(r"&#822[01];", re.U | re.I),
    r'"',
)

file_list = [
    r"s:\supermemo\systems\zenmode\elements\2\27.HTM"
    # r"s:\supermemo\systems\zenmode\elements\2\27.HTM"
    # r"s:\supermemo\systems\zenmode\elements\2\27.HTM"
    # r"s:\supermemo\systems\zenmode\elements\2\27.HTM"
]

find_replace_list = [
    smart_single_quote,
    smart_double_quote,
]

##################################################
# MODIFY BELOW AT YOUR OWN RISK


def _replace_string_in_file(
    fpath, find_replace_list, do_backup, BACKUP_LOCATION, BACKUP_SUFFIX
):
    "Replaces all strings by regex in find_replace_list at fpath."

    with open(fpath, "r", encoding="utf-8") as input_file:
        try:
            file_content = input_file.read()
        except UnicodeDecodeError:
            print("UnicodeDecodeError:{:s}".format(input_file))
            return

        num_replaced = 0
        for a_pair in find_replace_list:
            tem_tuple = re.subn(a_pair[0], a_pair[1], file_content)
            output_text = tem_tuple[0]
            num_replaced += tem_tuple[1]
            file_content = output_text

        if num_replaced > 0:
            print(("◆ changed %d %s" % (num_replaced, fpath)))

            if do_backup:
                shutil.copy2(
                    fpath,
                    BACKUP_LOCATION + ntpath.basename(fpath) + BACKUP_SUFFIX,
                )

    with open(fpath, "r+", encoding="utf-8") as output_file:
        output_file.read()  # to preserve file creation date
        output_file.seek(0)
        output_file.write(output_text)
        output_file.truncate()

    return None


##################################################


def main():
    print(datetime.datetime.now())
    if len(file_list) != 0:
        for ff in file_list:
            try:
                _replace_string_in_file(
                    os.path.normpath(ff),
                    find_replace_list,
                    do_backup,
                    BACKUP_LOCATION,
                    BACKUP_SUFFIX,
                )
            except:
                traceback.print_exc()
    print("Done.")
    return None


if __name__ == "__main__":
    main()
