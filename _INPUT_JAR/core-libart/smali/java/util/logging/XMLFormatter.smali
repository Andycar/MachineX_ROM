.class public Ljava/util/logging/XMLFormatter;
.super Ljava/util/logging/Formatter;
.source "XMLFormatter.java"


# static fields
.field private static final indent:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 39
    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indentCount"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_b

    .line 133
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_b
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    return-void
.end method

.method private formatMessages(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V
    .registers 10
    .param p1, "r"    # Ljava/util/logging/LogRecord;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x1

    .line 87
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v3

    .line 88
    .local v3, "rb":Ljava/util/ResourceBundle;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "pattern":Ljava/lang/String;
    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    .line 92
    :try_start_d
    invoke-virtual {v3, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_1a

    move-result-object v1

    .line 97
    .local v1, "message":Ljava/lang/String;
    :goto_11
    if-nez v1, :cond_1d

    .line 98
    move-object v1, v2

    .line 99
    const-string v4, "message"

    invoke-static {p2, v6, v4, v1}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    .end local v1    # "message":Ljava/lang/String;
    :goto_19
    return-void

    .line 93
    :catch_1a
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_11

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    const-string v4, "message"

    invoke-static {p2, v6, v4, v1}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v4, "key"

    invoke-static {p2, v6, v4, v2}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v4, "catalog"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v6, v4, v5}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 105
    .end local v1    # "message":Ljava/lang/String;
    :cond_31
    if-eqz v2, :cond_39

    .line 106
    const-string v4, "message"

    invoke-static {p2, v6, v4, v2}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 108
    :cond_39
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<message/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method private formatThrowable(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V
    .registers 14
    .param p1, "r"    # Ljava/util/logging/LogRecord;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x3

    .line 114
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v6

    .local v6, "t":Ljava/lang/Throwable;
    if-eqz v6, :cond_8a

    .line 115
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "nl":Ljava/lang/String;
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<exception>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v7, 0x2

    const-string v8, "message"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v7, v8, v9}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 120
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2b
    if-ge v3, v4, :cond_7b

    aget-object v1, v0, v3

    .line 121
    .local v1, "e":Ljava/lang/StackTraceElement;
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<frame>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v7, "class"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v10, v7, v8}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v7, "method"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v10, v7, v8}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v7, "line"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2, v10, v7, v8}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</frame>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 127
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_7b
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</exception>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "nl":Ljava/lang/String;
    :cond_8a
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 16
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v8

    .line 53
    .local v8, "time":J
    const-string v10, "{0, date} {0, time}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "date":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "nl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v10, "<record>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v10, 0x1

    const-string v11, "date"

    invoke-static {v7, v10, v11, v1}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    const/4 v10, 0x1

    const-string v11, "millis"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    const/4 v10, 0x1

    const-string v11, "sequence"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_55

    .line 62
    const/4 v10, 0x1

    const-string v11, "logger"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_55
    const/4 v10, 0x1

    const-string v11, "level"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_73

    .line 66
    const/4 v10, 0x1

    const-string v11, "class"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_73
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_83

    .line 69
    const/4 v10, 0x1

    const-string v11, "method"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_83
    const/4 v10, 0x1

    const-string v11, "thread"

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v10, v11, v12}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0, p1, v7}, Ljava/util/logging/XMLFormatter;->formatMessages(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V

    .line 73
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v6

    .line 74
    .local v6, "params":[Ljava/lang/Object;
    if-eqz v6, :cond_aa

    .line 75
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9d
    if-ge v3, v4, :cond_aa

    aget-object v2, v0, v3

    .line 76
    .local v2, "element":Ljava/lang/Object;
    const/4 v10, 0x1

    const-string v11, "param"

    invoke-static {v7, v10, v11, v2}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 79
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_aa
    invoke-direct {p0, p1, v7}, Ljava/util/logging/XMLFormatter;->formatThrowable(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V

    .line 80
    const-string v10, "</record>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 6
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "encoding":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 154
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_7
    if-nez v0, :cond_f

    .line 157
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" standalone=\"no\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "<!DOCTYPE log SYSTEM \"logger.dtd\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "<log>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 178
    const-string v0, "</log>"

    return-object v0
.end method
