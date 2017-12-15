.class public Landroid/provider/Settings$LogMsg;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# static fields
.field private static final KEY_SETTINGS_DB_CALLSTACK_KEY_LIST:Ljava/lang/String; = "settings_db_callstack_key_list"

.field private static final MAX_SIZE_OF_LOG_FILE:J = 0x100000L

.field private static final SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;

.field private static final SETTINGS_DB_KEY_DEFAULT:Ljava/lang/String; = ";"

.field private static SETTINGS_DB_KEY_LIST:Ljava/lang/String; = null

.field private static final SETTINGS_DB_KEY_UNSETTED:Ljava/lang/String; = "unsetted"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log_settings_db_callstack/SettingsDBCallStackLog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;

    .line 1058
    const-string/jumbo v0, "unsetted"

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1115
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1116
    return-void
.end method

.method public static checkToMakeCallStackLog(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1063
    :try_start_0
    const-string/jumbo v2, "unsetted"

    sget-object v3, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1064
    const-string/jumbo v2, "settings_db_callstack_key_list"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1065
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 1066
    const-string v2, ";"

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1070
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result v2

    .line 1073
    .end local v1    # "key":Ljava/lang/String;
    :goto_3b
    return v2

    .line 1072
    :catch_3c
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method public static getCallStackDBKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1120
    sget-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-object v0
.end method

.method public static setCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1109
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1110
    return-void
.end method

.method public static writeCallStackLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1079
    .local v4, "now":Ljava/util/Calendar;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1080
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/PrintStream;

    invoke-direct {v8, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1081
    .local v8, "pinrtStream":Ljava/io/PrintStream;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1082
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "msg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1084
    .local v7, "output_str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1085
    .local v1, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 1088
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    :try_start_4f
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_8f
    .catchall {:try_start_4f .. :try_end_56} :catchall_98

    .line 1089
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_56
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 1090
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    cmp-long v9, v10, v12

    if-lez v9, :cond_ad

    .line 1091
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1092
    new-instance v1, Ljava/io/File;

    sget-object v9, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_72} :catch_a7
    .catchall {:try_start_56 .. :try_end_72} :catchall_a1

    .line 1094
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_72
    :try_start_72
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_8f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_98

    .line 1095
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .local v6, "osw":Ljava/io/OutputStreamWriter;
    :try_start_7f
    invoke-virtual {v6, v7}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1096
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_85} :catch_aa
    .catchall {:try_start_7f .. :try_end_85} :catchall_a4

    .line 1100
    if-eqz v6, :cond_8a

    .line 1101
    :try_start_87
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8c

    :cond_8a
    move-object v5, v6

    .line 1105
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :cond_8b
    :goto_8b
    return-void

    .line 1103
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_8c
    move-exception v9

    move-object v5, v6

    .line 1104
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_8b

    .line 1097
    :catch_8f
    move-exception v9

    .line 1100
    :goto_90
    if-eqz v5, :cond_8b

    .line 1101
    :try_start_92
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_8b

    .line 1103
    :catch_96
    move-exception v9

    goto :goto_8b

    .line 1099
    :catchall_98
    move-exception v9

    .line 1100
    :goto_99
    if-eqz v5, :cond_9e

    .line 1101
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 1103
    :cond_9e
    :goto_9e
    throw v9

    :catch_9f
    move-exception v10

    goto :goto_9e

    .line 1099
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_a1
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_99

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_a4
    move-exception v9

    move-object v5, v6

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_99

    .line 1097
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_a7
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_90

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_aa
    move-exception v9

    move-object v5, v6

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_90

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_ad
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_72
.end method
