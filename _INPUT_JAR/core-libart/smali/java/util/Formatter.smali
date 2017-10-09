.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$CachedDecimalFormat;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# static fields
.field private static final ZEROS:[C

.field private static final cachedDecimalFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Formatter$CachedDecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arg:Ljava/lang/Object;

.field private closed:Z

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private localeData:Llibcore/icu/LocaleData;

.field private out:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 529
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Ljava/util/Formatter;->ZEROS:[C

    .line 583
    new-instance v0, Ljava/util/Formatter$1;

    invoke-direct {v0}, Ljava/util/Formatter$1;-><init>()V

    sput-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    return-void

    .line 529
    nop

    :array_12
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 608
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    .line 755
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 781
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Formatter;->closed:Z

    .line 806
    const/4 v1, 0x0

    .line 808
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_c} :catch_20

    .line 809
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_18} :catch_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_18} :catch_25

    .line 818
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 819
    return-void

    .line 810
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 812
    throw v0

    .line 813
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v0

    .line 814
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_21
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 815
    throw v0

    .line 813
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_25
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_21

    .line 810
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_28
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1c
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 833
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 834
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 835
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 853
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 870
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 871
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 872
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 888
    if-nez p1, :cond_10

    .line 889
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ps == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_10
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 892
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 893
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 3
    .param p1, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 622
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 623
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 652
    if-nez p1, :cond_12

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 657
    :goto_f
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 658
    return-void

    .line 655
    :cond_12
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    .line 681
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 733
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 637
    return-void
.end method

.method private appendLocalized(Ljava/lang/StringBuilder;JI)V
    .registers 11
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "width"    # I

    .prologue
    const/16 v5, 0x30

    .line 1978
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1979
    .local v1, "paddingIndex":I
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v3, v4, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1980
    .local v3, "zeroDigit":C
    if-ne v3, v5, :cond_19

    .line 1981
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1985
    :goto_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, p4, v4

    .line 1986
    .local v2, "zeroCount":I
    if-gtz v2, :cond_25

    .line 1996
    :cond_18
    :goto_18
    return-void

    .line 1983
    .end local v2    # "zeroCount":I
    :cond_19
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1989
    .restart local v2    # "zeroCount":I
    :cond_25
    if-ne v3, v5, :cond_2e

    .line 1990
    sget-object v4, Ljava/util/Formatter;->ZEROS:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v2}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 1992
    :cond_2e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    if-ge v0, v2, :cond_18

    .line 1993
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1992
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method private appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z
    .registers 15
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "conversion"    # C
    .param p3, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    .line 1837
    packed-switch p2, :pswitch_data_22c

    :pswitch_a
    move v4, v5

    .line 1970
    :goto_b
    return v4

    .line 1839
    :pswitch_c
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1842
    :pswitch_1b
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1845
    :pswitch_2a
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1848
    :pswitch_38
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1851
    :pswitch_46
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto :goto_b

    .line 1854
    :pswitch_51
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1855
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1856
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1857
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1858
    const/16 v5, 0x79

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_b

    .line 1861
    :pswitch_6b
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1862
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1863
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1864
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1865
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_b

    .line 1868
    :pswitch_85
    const/16 v5, 0xb

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1871
    :pswitch_91
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1874
    :pswitch_a1
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const/4 v5, 0x3

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1877
    :pswitch_ae
    const/16 v5, 0xc

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1880
    :pswitch_ba
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    const/16 v5, 0x9

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1883
    :pswitch_cc
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1886
    :pswitch_d5
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1887
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1888
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_b

    .line 1891
    :pswitch_e4
    const/16 v5, 0xd

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1894
    :pswitch_f0
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1895
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1897
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1898
    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_b

    .line 1901
    :pswitch_107
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const/4 v5, 0x4

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1904
    :pswitch_112
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1905
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v6, v5, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1909
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    :pswitch_129
    const/16 v5, 0x61

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1910
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    const/16 v5, 0x62

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1912
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1913
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1914
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1915
    const/16 v5, 0x54

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1916
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1917
    const/16 v5, 0x5a

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1918
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1919
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_b

    .line 1922
    :pswitch_158
    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1925
    :pswitch_163
    const/4 v6, 0x5

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1928
    :pswitch_16e
    const/4 v5, 0x6

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const/4 v5, 0x3

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1931
    :pswitch_17a
    const/16 v6, 0xb

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1934
    :pswitch_186
    const/16 v6, 0xa

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1938
    :pswitch_196
    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1941
    :pswitch_1a2
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1944
    :pswitch_1b9
    const/16 v5, 0x49

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1945
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1946
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1947
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1948
    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1949
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1950
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1953
    :pswitch_1e2
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1956
    :pswitch_1ee
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1959
    :pswitch_1fa
    const/16 v5, 0xf

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v0, v5

    .line 1960
    .local v0, "offset":J
    const/16 v2, 0x2b

    .line 1961
    .local v2, "sign":C
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_213

    .line 1962
    const/16 v2, 0x2d

    .line 1963
    neg-long v0, v0

    .line 1965
    :cond_213
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    const-wide/32 v6, 0x36ee80

    div-long v6, v0, v6

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    .line 1967
    const-wide/32 v6, 0x36ee80

    rem-long v6, v0, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_b

    .line 1837
    :pswitch_data_22c
    .packed-switch 0x41
        :pswitch_c
        :pswitch_2a
        :pswitch_46
        :pswitch_51
        :pswitch_a
        :pswitch_6b
        :pswitch_a
        :pswitch_85
        :pswitch_91
        :pswitch_a
        :pswitch_a
        :pswitch_a1
        :pswitch_ae
        :pswitch_ba
        :pswitch_a
        :pswitch_a
        :pswitch_cc
        :pswitch_d5
        :pswitch_e4
        :pswitch_f0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_107
        :pswitch_112
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1b
        :pswitch_38
        :pswitch_129
        :pswitch_158
        :pswitch_163
        :pswitch_a
        :pswitch_a
        :pswitch_38
        :pswitch_a
        :pswitch_16e
        :pswitch_17a
        :pswitch_186
        :pswitch_196
        :pswitch_a
        :pswitch_a
        :pswitch_1a2
        :pswitch_a
        :pswitch_1b9
        :pswitch_1e2
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1ee
        :pswitch_1fa
    .end packed-switch
.end method

.method private badArgumentType()Ljava/util/IllegalFormatConversionException;
    .registers 4

    .prologue
    .line 1489
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private checkNotClosed()V
    .registers 2

    .prologue
    .line 896
    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-eqz v0, :cond_a

    .line 897
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 899
    :cond_a
    return-void
.end method

.method private varargs doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 24
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1050
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 1052
    new-instance v7, Ljava/util/Formatter$FormatSpecifierParser;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v7, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    const/4 v11, 0x0

    .line 1054
    .local v11, "currentObjectIndex":I
    const/4 v14, 0x0

    .line 1055
    .local v14, "lastArgument":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1057
    .local v9, "hasLastArgumentSet":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1058
    .local v15, "length":I
    const/4 v13, 0x0

    .local v13, "i":I
    move-object v8, v14

    move v12, v11

    .line 1059
    .end local v11    # "currentObjectIndex":I
    .end local v14    # "lastArgument":Ljava/lang/Object;
    .local v12, "currentObjectIndex":I
    :goto_14
    if-ge v13, v15, :cond_83

    .line 1061
    move/from16 v18, v13

    .line 1062
    .local v18, "plainTextStart":I
    const/16 v4, 0x25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1063
    .local v16, "nextPercent":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_7a

    move/from16 v17, v15

    .line 1065
    .local v17, "plainTextEnd":I
    :goto_27
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_38

    .line 1066
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1068
    :cond_38
    move/from16 v13, v17

    .line 1070
    if-ge v13, v15, :cond_87

    .line 1071
    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Formatter$FormatSpecifierParser;->parseFormatToken(I)Ljava/util/Formatter$FormatToken;

    move-result-object v20

    .line 1073
    .local v20, "token":Ljava/util/Formatter$FormatToken;
    const/4 v10, 0x0

    .line 1074
    .local v10, "argument":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1075
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7d

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    move v6, v12

    .local v6, "index":I
    :goto_53
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 1076
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v10

    .line 1077
    move-object v14, v10

    .line 1078
    .restart local v14    # "lastArgument":Ljava/lang/Object;
    const/4 v9, 0x1

    .line 1081
    .end local v6    # "index":I
    .end local v10    # "argument":Ljava/lang/Object;
    .end local v14    # "lastArgument":Ljava/lang/Object;
    :goto_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Ljava/util/Formatter;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1083
    .local v19, "substitution":Ljava/lang/CharSequence;
    if-eqz v19, :cond_73

    .line 1084
    const/4 v4, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1086
    :cond_73
    # getter for: Ljava/util/Formatter$FormatSpecifierParser;->i:I
    invoke-static {v7}, Ljava/util/Formatter$FormatSpecifierParser;->access$000(Ljava/util/Formatter$FormatSpecifierParser;)I

    move-result v13

    .end local v19    # "substitution":Ljava/lang/CharSequence;
    .end local v20    # "token":Ljava/util/Formatter$FormatToken;
    :goto_77
    move-object v8, v14

    move v12, v11

    .line 1088
    .end local v11    # "currentObjectIndex":I
    .restart local v12    # "currentObjectIndex":I
    goto :goto_14

    .end local v17    # "plainTextEnd":I
    :cond_7a
    move/from16 v17, v16

    .line 1063
    goto :goto_27

    .line 1075
    .restart local v10    # "argument":Ljava/lang/Object;
    .restart local v17    # "plainTextEnd":I
    .restart local v20    # "token":Ljava/util/Formatter$FormatToken;
    :cond_7d
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v6

    move v11, v12

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    goto :goto_53

    .line 1089
    .end local v10    # "argument":Ljava/lang/Object;
    .end local v11    # "currentObjectIndex":I
    .end local v16    # "nextPercent":I
    .end local v17    # "plainTextEnd":I
    .end local v18    # "plainTextStart":I
    .end local v20    # "token":Ljava/util/Formatter$FormatToken;
    .restart local v12    # "currentObjectIndex":I
    :cond_83
    return-void

    .restart local v10    # "argument":Ljava/lang/Object;
    .restart local v16    # "nextPercent":I
    .restart local v17    # "plainTextEnd":I
    .restart local v18    # "plainTextStart":I
    .restart local v20    # "token":Ljava/util/Formatter$FormatToken;
    :cond_84
    move-object v14, v8

    move v11, v12

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    goto :goto_5d

    .end local v10    # "argument":Ljava/lang/Object;
    .end local v11    # "currentObjectIndex":I
    .end local v20    # "token":Ljava/util/Formatter$FormatToken;
    .restart local v12    # "currentObjectIndex":I
    :cond_87
    move-object v14, v8

    move v11, v12

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    goto :goto_77
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "fsp"    # Ljava/util/Formatter$FormatSpecifierParser;
    .param p4, "lastArgument"    # Ljava/lang/Object;
    .param p5, "hasLastArgumentSet"    # Z

    .prologue
    const/4 v1, -0x2

    .line 1102
    if-ne p2, v1, :cond_d

    if-nez p5, :cond_d

    .line 1103
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_d
    if-nez p1, :cond_11

    .line 1107
    const/4 p4, 0x0

    .line 1118
    .end local p4    # "lastArgument":Ljava/lang/Object;
    :cond_10
    :goto_10
    return-object p4

    .line 1110
    .restart local p4    # "lastArgument":Ljava/lang/Object;
    :cond_11
    array-length v0, p1

    if-lt p2, v0, :cond_1e

    .line 1111
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_1e
    if-eq p2, v1, :cond_10

    .line 1118
    aget-object p4, p1, p2

    goto :goto_10
.end method

.method private getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter$CachedDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    invoke-virtual {v0, v1, p1}, Ljava/util/Formatter$CachedDecimalFormat;->update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method private insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x2d

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1518
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1519
    .local v0, "digitsLength":I
    const/4 v2, 0x0

    .line 1520
    .local v2, "i":I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_25

    .line 1521
    add-int/lit8 v0, v0, -0x1

    .line 1522
    add-int/lit8 v2, v2, 0x1

    .line 1523
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1527
    :cond_25
    rem-int/lit8 v1, v0, 0x3

    .line 1528
    .local v1, "headLength":I
    if-nez v1, :cond_2a

    .line 1529
    const/4 v1, 0x3

    .line 1531
    :cond_2a
    add-int v4, v2, v1

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1532
    add-int/2addr v2, v1

    .line 1535
    :goto_30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_45

    .line 1536
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v4, v4, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1537
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1535
    add-int/lit8 v2, v2, 0x3

    goto :goto_30

    .line 1539
    :cond_45
    return-object v3
.end method

.method private localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1497
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1498
    .local v2, "length":I
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    .line 1499
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1500
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_27

    .line 1501
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1502
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_21

    const/16 v5, 0x39

    if-gt v0, v5, :cond_21

    .line 1503
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 1505
    :cond_21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1500
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1507
    .end local v0    # "ch":C
    :cond_27
    return-object v4
.end method

.method private outputCharSequence(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1098
    :goto_5
    return-void

    .line 1095
    :catch_6
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_5
.end method

.method private padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I

    .prologue
    .line 1613
    move v6, p2

    .line 1614
    .local v6, "start":I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v7

    .line 1615
    .local v7, "width":I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    .line 1617
    .local v4, "precision":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1618
    .local v0, "length":I
    if-ltz v4, :cond_21

    .line 1619
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1620
    instance-of v8, p1, Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2e

    move-object v8, p1

    .line 1621
    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1626
    :cond_21
    :goto_21
    if-lez v7, :cond_2b

    .line 1627
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1629
    :cond_2b
    if-lt v0, v7, :cond_34

    .line 1654
    .end local p1    # "source":Ljava/lang/CharSequence;
    :goto_2d
    return-object p1

    .line 1623
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_2e
    const/4 v8, 0x0

    invoke-interface {p1, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_21

    .line 1633
    :cond_34
    const/16 v1, 0x20

    .line 1634
    .local v1, "paddingChar":C
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v8, :cond_63

    .line 1635
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_60

    .line 1636
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v1, v8, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1644
    :goto_4a
    sub-int v8, v7, v0

    new-array v2, v8, [C

    .line 1645
    .local v2, "paddingChars":[C
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1647
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v3, v8, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    .line 1648
    .local v3, "paddingRight":Z
    invoke-direct {p0, p1}, Ljava/util/Formatter;->toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1649
    .local v5, "result":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_65

    .line 1650
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_5e
    move-object p1, v5

    .line 1654
    goto :goto_2d

    .line 1638
    .end local v2    # "paddingChars":[C
    .end local v3    # "paddingRight":Z
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_60
    const/16 v1, 0x30

    goto :goto_4a

    .line 1642
    :cond_63
    const/4 v6, 0x0

    goto :goto_4a

    .line 1652
    .restart local v2    # "paddingChars":[C
    .restart local v3    # "paddingRight":Z
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_65
    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_5e
.end method

.method private static startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "minusSign"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2096
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 2106
    :cond_b
    :goto_b
    return v1

    .line 2100
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 2101
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_b

    .line 2100
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2106
    :cond_20
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private to12Hour(I)I
    .registers 2
    .param p1, "hour"    # I

    .prologue
    .line 1974
    if-nez p1, :cond_4

    const/16 p1, 0xc

    .end local p1    # "hour":I
    :cond_4
    return p1
.end method

.method private toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1658
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1    # "cs":Ljava/lang/CharSequence;
    :goto_6
    return-object p1

    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_6
.end method

.method private transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1408
    iput-object p1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 1409
    iput-object p2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .line 1415
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1416
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_fc

    .line 1442
    :cond_12
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$FormatToken;->checkFlags(Ljava/lang/Object;)V

    .line 1444
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_106

    .line 1477
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v2

    throw v2

    .line 1418
    :sswitch_25
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_2c

    .line 1419
    const-string v1, "null"

    .line 1485
    :cond_2b
    :goto_2b
    return-object v1

    .line 1420
    :cond_2c
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-nez v2, :cond_12

    .line 1421
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 1425
    :sswitch_39
    iget-object v2, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6c

    const/4 v0, 0x1

    .line 1426
    .local v0, "needLocalizedDigits":Z
    :goto_42
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_84

    if-nez v0, :cond_84

    .line 1427
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_5c

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_5c

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_6e

    .line 1428
    :cond_5c
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    goto :goto_2b

    .line 1425
    .end local v0    # "needLocalizedDigits":Z
    :cond_6c
    const/4 v0, 0x0

    goto :goto_42

    .line 1430
    .restart local v0    # "needLocalizedDigits":Z
    :cond_6e
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_84

    .line 1431
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    goto :goto_2b

    .line 1435
    :cond_84
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_9c

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_9c

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_9c

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_12

    .line 1436
    :cond_9c
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1437
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_2b

    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2b

    .line 1446
    .end local v0    # "needLocalizedDigits":Z
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_a9
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBoolean()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1480
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_ad
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1481
    if-eqz v1, :cond_2b

    .line 1482
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2b

    .line 1449
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_c5
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromHashCode()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1450
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1452
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_ca
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1453
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1455
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_cf
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromCharacter()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1456
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1458
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_d4
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_de

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_e3

    .line 1459
    :cond_de
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBigInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1461
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_e3
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1463
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1465
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_e8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromFloat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1466
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1468
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_ed
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromPercent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1469
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1471
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_f2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 1472
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1474
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_f7
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromDateTime()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1475
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_ad

    .line 1416
    :sswitch_data_fc
    .sparse-switch
        0x64 -> :sswitch_39
        0x73 -> :sswitch_25
    .end sparse-switch

    .line 1444
    :sswitch_data_106
    .sparse-switch
        0x25 -> :sswitch_ed
        0x41 -> :sswitch_e8
        0x42 -> :sswitch_a9
        0x43 -> :sswitch_cf
        0x45 -> :sswitch_e8
        0x47 -> :sswitch_e8
        0x48 -> :sswitch_c5
        0x53 -> :sswitch_ca
        0x54 -> :sswitch_f7
        0x58 -> :sswitch_d4
        0x61 -> :sswitch_e8
        0x62 -> :sswitch_a9
        0x63 -> :sswitch_cf
        0x64 -> :sswitch_d4
        0x65 -> :sswitch_e8
        0x66 -> :sswitch_e8
        0x67 -> :sswitch_e8
        0x68 -> :sswitch_c5
        0x6e -> :sswitch_f2
        0x6f -> :sswitch_d4
        0x73 -> :sswitch_ca
        0x74 -> :sswitch_f7
        0x78 -> :sswitch_d4
    .end sparse-switch
.end method

.method private transformA(Ljava/lang/StringBuilder;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2243
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_1e

    .line 2244
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    :goto_15
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v5

    if-nez v5, :cond_39

    .line 2274
    :cond_1d
    :goto_1d
    return-void

    .line 2245
    :cond_1e
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_34

    .line 2246
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 2248
    :cond_34
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v5

    throw v5

    .line 2255
    :cond_39
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v3

    .line 2256
    .local v3, "precision":I
    if-nez v3, :cond_42

    .line 2257
    const/4 v3, 0x1

    .line 2259
    :cond_42
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 2260
    .local v1, "indexOfFirstFractionalDigit":I
    const-string v5, "p"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2261
    .local v2, "indexOfP":I
    sub-int v0, v2, v1

    .line 2263
    .local v0, "fractionalLength":I
    if-eq v0, v3, :cond_1d

    .line 2267
    if-ge v0, v3, :cond_63

    .line 2268
    sub-int v5, v3, v0

    new-array v4, v5, [C

    .line 2269
    .local v4, "zeros":[C
    const/16 v5, 0x30

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2270
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 2273
    .end local v4    # "zeros":[C
    :cond_63
    add-int v5, v1, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method

.method private transformE(Ljava/lang/StringBuilder;)V
    .registers 13
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x0

    .line 2111
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2112
    .local v5, "precision":I
    const-string v4, "0E+00"

    .line 2113
    .local v4, "pattern":Ljava/lang/String;
    if-lez v5, :cond_25

    .line 2114
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0."

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-array v7, v5, [C

    .line 2116
    .local v7, "zeros":[C
    const/16 v8, 0x30

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 2117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2118
    const-string v8, "E+00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2122
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "zeros":[C
    :cond_25
    invoke-direct {p0, v4}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v3

    .line 2124
    .local v3, "nf":Llibcore/icu/NativeDecimalFormat;
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v8, v8, Ljava/math/BigDecimal;

    if-eqz v8, :cond_48

    .line 2125
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v3, v8, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v0

    .line 2130
    .local v0, "chars":[C
    :goto_37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    array-length v8, v0

    if-ge v1, v8, :cond_55

    .line 2131
    aget-char v8, v0, v1

    const/16 v9, 0x45

    if-ne v8, v9, :cond_45

    .line 2132
    const/16 v8, 0x65

    aput-char v8, v0, v1

    .line 2130
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 2127
    .end local v0    # "chars":[C
    .end local v1    # "i":I
    :cond_48
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v0

    .restart local v0    # "chars":[C
    goto :goto_37

    .line 2135
    .restart local v1    # "i":I
    :cond_55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2137
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_6d

    if-nez v5, :cond_6d

    .line 2138
    const-string v8, "e"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2139
    .local v2, "indexOfE":I
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2141
    .end local v2    # "indexOfE":I
    :cond_6d
    return-void
.end method

.method private transformF(Ljava/lang/StringBuilder;)V
    .registers 13
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x0

    const/16 v8, 0x30

    .line 2209
    const-string v3, "0.000000"

    .line 2210
    .local v3, "pattern":Ljava/lang/String;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2211
    .local v5, "precision":I
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v7, :cond_14

    const/4 v7, 0x6

    if-eq v5, v7, :cond_47

    .line 2212
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2213
    .local v4, "patternBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v7, :cond_30

    .line 2214
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2215
    const/4 v0, 0x3

    .line 2216
    .local v0, "groupingSize":I
    const/4 v7, 0x2

    new-array v6, v7, [C

    .line 2217
    .local v6, "sharps":[C
    const/16 v7, 0x23

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 2218
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2220
    .end local v0    # "groupingSize":I
    .end local v6    # "sharps":[C
    :cond_30
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2221
    if-lez v5, :cond_43

    .line 2222
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    if-ge v1, v5, :cond_43

    .line 2224
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 2227
    .end local v1    # "i":I
    :cond_43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2230
    .end local v4    # "patternBuilder":Ljava/lang/StringBuilder;
    :cond_47
    invoke-direct {p0, v3}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v2

    .line 2231
    .local v2, "nf":Llibcore/icu/NativeDecimalFormat;
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_6c

    .line 2232
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v2, v7, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2237
    :goto_5c
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v7, :cond_6b

    if-nez v5, :cond_6b

    .line 2238
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    :cond_6b
    return-void

    .line 2234
    :cond_6c
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_5c
.end method

.method private transformFromBigInteger()Ljava/lang/CharSequence;
    .registers 11

    .prologue
    const/16 v9, 0x6f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1752
    const/4 v5, 0x0

    .line 1753
    .local v5, "startIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    .local v4, "result":Ljava/lang/StringBuilder;
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 1755
    .local v0, "bigInt":Ljava/math/BigInteger;
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    .line 1757
    .local v1, "currentConversionType":C
    if-nez v0, :cond_1b

    .line 1758
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1805
    :goto_1a
    return-object v6

    .line 1761
    :cond_1b
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_76

    move v3, v6

    .line 1763
    .local v3, "isNegative":Z
    :goto_24
    const/16 v8, 0x64

    if-ne v1, v8, :cond_78

    .line 1764
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1765
    .local v2, "digits":Ljava/lang/CharSequence;
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v8, :cond_38

    .line 1766
    invoke-direct {p0, v2}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1768
    :cond_38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1776
    .end local v2    # "digits":Ljava/lang/CharSequence;
    :goto_3b
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_4d

    .line 1777
    if-eqz v3, :cond_8e

    move v5, v6

    .line 1778
    :goto_44
    if-ne v1, v9, :cond_90

    .line 1779
    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    add-int/lit8 v5, v5, 0x1

    .line 1787
    :cond_4d
    :goto_4d
    if-nez v3, :cond_69

    .line 1788
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_5c

    .line 1789
    const/16 v6, 0x2b

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1790
    add-int/lit8 v5, v5, 0x1

    .line 1792
    :cond_5c
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_69

    .line 1793
    const/16 v6, 0x20

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1794
    add-int/lit8 v5, v5, 0x1

    .line 1799
    :cond_69
    if-eqz v3, :cond_a0

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_a0

    .line 1800
    invoke-direct {p0, v4}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1a

    .end local v3    # "isNegative":Z
    :cond_76
    move v3, v7

    .line 1761
    goto :goto_24

    .line 1769
    .restart local v3    # "isNegative":Z
    :cond_78
    if-ne v1, v9, :cond_84

    .line 1771
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 1774
    :cond_84
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_8e
    move v5, v7

    .line 1777
    goto :goto_44

    .line 1781
    :cond_90
    const/16 v6, 0x78

    if-eq v1, v6, :cond_98

    const/16 v6, 0x58

    if-ne v1, v6, :cond_4d

    .line 1782
    :cond_98
    const-string v6, "0x"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    add-int/lit8 v5, v5, 0x2

    goto :goto_4d

    .line 1802
    :cond_a0
    if-eqz v3, :cond_aa

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_aa

    .line 1803
    add-int/lit8 v5, v5, 0x1

    .line 1805
    :cond_aa
    invoke-direct {p0, v4, v5}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_1a
.end method

.method private transformFromBoolean()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1544
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 1545
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "result":Ljava/lang/CharSequence;
    :goto_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1546
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_12
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_19

    .line 1547
    const-string v0, "false"

    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_c

    .line 1549
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_19
    const-string v0, "true"

    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_c
.end method

.method private transformFromCharacter()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1589
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_c

    .line 1590
    const-string v2, "null"

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1602
    :goto_b
    return-object v2

    .line 1592
    :cond_c
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1d

    .line 1593
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_b

    .line 1594
    :cond_1d
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2f

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2f

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5a

    .line 1595
    :cond_2f
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1596
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1597
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 1599
    :cond_43
    const/high16 v2, 0x10000

    if-ge v0, v2, :cond_51

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_4c
    invoke-direct {p0, v1, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_b

    .line 1599
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_51
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    .line 1604
    .end local v0    # "codePoint":I
    :cond_5a
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v2

    throw v2
.end method

.method private transformFromDateTime()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 1809
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 1810
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1833
    :goto_8
    return-object v3

    .line 1814
    :cond_9
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Calendar;

    if-eqz v3, :cond_2b

    .line 1815
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 1829
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1830
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 1831
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v3

    throw v3

    .line 1817
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :cond_2b
    const/4 v1, 0x0

    .line 1818
    .local v1, "date":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_49

    .line 1819
    new-instance v1, Ljava/util/Date;

    .end local v1    # "date":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1825
    .restart local v1    # "date":Ljava/util/Date;
    :goto_3f
    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1826
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_13

    .line 1820
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_49
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Date;

    if-eqz v3, :cond_54

    .line 1821
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .end local v1    # "date":Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .restart local v1    # "date":Ljava/util/Date;
    goto :goto_3f

    .line 1823
    :cond_54
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v3

    throw v3

    .line 1833
    .end local v1    # "date":Ljava/util/Date;
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    :cond_59
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_8
.end method

.method private transformFromFloat()Ljava/lang/CharSequence;
    .registers 15

    .prologue
    const/16 v13, 0x61

    const/16 v12, 0x41

    const/16 v11, 0x2b

    const/4 v10, 0x0

    .line 2026
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v7, :cond_10

    .line 2027
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2092
    :goto_f
    return-object v7

    .line 2028
    :cond_10
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Float;

    if-nez v7, :cond_1c

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Double;

    if-eqz v7, :cond_39

    .line 2029
    :cond_1c
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    .line 2030
    .local v4, "number":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2031
    .local v2, "d":D
    cmpl-double v7, v2, v2

    if-nez v7, :cond_34

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v2, v8

    if-eqz v7, :cond_34

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v7, v2, v8

    if-nez v7, :cond_3f

    .line 2032
    :cond_34
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->transformFromSpecialNumber(D)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_f

    .line 2034
    .end local v2    # "d":D
    .end local v4    # "number":Ljava/lang/Number;
    :cond_39
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_66

    .line 2041
    :cond_3f
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 2042
    .local v0, "conversionType":C
    if-eq v0, v13, :cond_57

    if-eq v0, v12, :cond_57

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-nez v7, :cond_57

    .line 2043
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2046
    :cond_57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    .local v5, "result":Ljava/lang/StringBuilder;
    sparse-switch v0, :sswitch_data_d8

    .line 2062
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v7

    throw v7

    .line 2038
    .end local v0    # "conversionType":C
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_66
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v7

    throw v7

    .line 2049
    .restart local v0    # "conversionType":C
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :sswitch_6b
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformA(Ljava/lang/StringBuilder;)V

    .line 2065
    :goto_6e
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2067
    const/4 v6, 0x0

    .line 2068
    .local v6, "startIndex":I
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/util/Formatter;->startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 2069
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v7, :cond_ae

    .line 2070
    invoke-direct {p0, v5}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_f

    .line 2052
    .end local v6    # "startIndex":I
    :sswitch_8a
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 2055
    :sswitch_8e
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 2059
    :sswitch_92
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformG(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 2073
    .restart local v6    # "startIndex":I
    :cond_96
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v7, :cond_a3

    .line 2074
    const/16 v7, 0x20

    invoke-virtual {v5, v10, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2075
    add-int/lit8 v6, v6, 0x1

    .line 2077
    :cond_a3
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v7, :cond_ae

    .line 2078
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2079
    add-int/lit8 v6, v6, 0x1

    .line 2083
    :cond_ae
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 2084
    .local v1, "firstChar":C
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v7, :cond_cc

    if-eq v1, v11, :cond_c4

    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/util/Formatter;->startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 2086
    :cond_c4
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 2089
    :cond_cc
    if-eq v0, v13, :cond_d0

    if-ne v0, v12, :cond_d2

    .line 2090
    :cond_d0
    add-int/lit8 v6, v6, 0x2

    .line 2092
    :cond_d2
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_f

    .line 2047
    :sswitch_data_d8
    .sparse-switch
        0x41 -> :sswitch_6b
        0x45 -> :sswitch_8a
        0x47 -> :sswitch_92
        0x61 -> :sswitch_6b
        0x65 -> :sswitch_8a
        0x66 -> :sswitch_8e
        0x67 -> :sswitch_92
    .end sparse-switch
.end method

.method private transformFromHashCode()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1556
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_c

    .line 1557
    const-string v0, "null"

    .line 1561
    .local v0, "result":Ljava/lang/CharSequence;
    :goto_6
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1559
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_c
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_6
.end method

.method private transformFromInteger()Ljava/lang/CharSequence;
    .registers 11

    .prologue
    const/16 v9, 0x6f

    const/4 v8, 0x0

    .line 1675
    const/4 v3, 0x0

    .line 1676
    .local v3, "startIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 1680
    .local v0, "currentConversionType":C
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_5e

    .line 1681
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1692
    .local v4, "value":J
    :goto_1d
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v6, :cond_2c

    .line 1693
    if-ne v0, v9, :cond_90

    .line 1694
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    add-int/lit8 v3, v3, 0x1

    .line 1702
    :cond_2c
    :goto_2c
    const/16 v6, 0x64

    if-ne v0, v6, :cond_c1

    .line 1703
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1704
    .local v1, "digits":Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v6, :cond_3e

    .line 1705
    invoke-direct {p0, v1}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1707
    :cond_3e
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v6, v6, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v7, 0x30

    if-eq v6, v7, :cond_4a

    .line 1708
    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1710
    :cond_4a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1712
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a5

    .line 1713
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_98

    .line 1714
    invoke-direct {p0, v2}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1743
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :goto_5d
    return-object v6

    .line 1682
    .end local v4    # "value":J
    :cond_5e
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6d

    .line 1683
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_1d

    .line 1684
    .end local v4    # "value":J
    :cond_6d
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_7c

    .line 1685
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->longValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_1d

    .line 1686
    .end local v4    # "value":J
    :cond_7c
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_8b

    .line 1687
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->longValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_1d

    .line 1689
    .end local v4    # "value":J
    :cond_8b
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v6

    throw v6

    .line 1697
    .restart local v4    # "value":J
    :cond_90
    const-string v6, "0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    add-int/lit8 v3, v3, 0x2

    goto :goto_2c

    .line 1715
    .restart local v1    # "digits":Ljava/lang/CharSequence;
    :cond_98
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_a0

    .line 1716
    add-int/lit8 v3, v3, 0x1

    .line 1743
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :cond_a0
    :goto_a0
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_5d

    .line 1719
    .restart local v1    # "digits":Ljava/lang/CharSequence;
    :cond_a5
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_b3

    .line 1720
    const/16 v6, 0x2b

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1721
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1722
    :cond_b3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_a0

    .line 1723
    const/16 v6, 0x20

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1724
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1729
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :cond_c1
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_d4

    .line 1730
    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 1736
    :cond_ca
    :goto_ca
    if-ne v0, v9, :cond_ec

    .line 1737
    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1731
    :cond_d4
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_df

    .line 1732
    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    goto :goto_ca

    .line 1733
    :cond_df
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_ca

    .line 1734
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_ca

    .line 1739
    :cond_ec
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0
.end method

.method private transformFromNull()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1747
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v1, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 1748
    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1609
    const-string v0, "%"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromSpecialNumber(D)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "d"    # D

    .prologue
    const/4 v4, 0x0

    .line 1999
    const/4 v0, 0x0

    .line 2000
    .local v0, "source":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2001
    const-string v0, "NaN"

    .line 2020
    :goto_a
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2021
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v4, v1, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 2022
    invoke-direct {p0, v0, v4}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_18
    return-object v1

    .line 2002
    :cond_19
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p1, v2

    if-nez v1, :cond_34

    .line 2003
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v1, :cond_28

    .line 2004
    const-string v0, "+Infinity"

    goto :goto_a

    .line 2005
    :cond_28
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v1, :cond_31

    .line 2006
    const-string v0, " Infinity"

    goto :goto_a

    .line 2008
    :cond_31
    const-string v0, "Infinity"

    goto :goto_a

    .line 2010
    :cond_34
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p1, v2

    if-nez v1, :cond_46

    .line 2011
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v1, :cond_43

    .line 2012
    const-string v0, "(Infinity)"

    goto :goto_a

    .line 2014
    :cond_43
    const-string v0, "-Infinity"

    goto :goto_a

    .line 2017
    :cond_46
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private transformFromString()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 1565
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-eqz v2, :cond_3a

    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, "flags":I
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v2, :cond_f

    .line 1568
    or-int/lit8 v0, v0, 0x1

    .line 1570
    :cond_f
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v2, :cond_17

    .line 1571
    or-int/lit8 v0, v0, 0x4

    .line 1573
    :cond_17
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1574
    or-int/lit8 v0, v0, 0x2

    .line 1576
    :cond_25
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/util/Formattable;

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v3

    iget-object v4, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-interface {v2, p0, v0, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 1582
    const/4 v2, 0x0

    .line 1585
    .end local v0    # "flags":I
    :goto_39
    return-object v2

    .line 1584
    :cond_3a
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_44
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_39

    .line 1584
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_4a
    const-string v1, "null"

    goto :goto_44
.end method

.method private transformG(Ljava/lang/StringBuilder;)V
    .registers 16
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 2144
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v1

    .line 2145
    .local v1, "precision":I
    if-nez v1, :cond_d

    .line 2146
    const/4 v1, 0x1

    .line 2148
    :cond_d
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2150
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2151
    .local v2, "d":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v2, v8

    if-nez v7, :cond_2b

    .line 2152
    add-int/lit8 v1, v1, -0x1

    .line 2153
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2154
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    .line 2205
    :goto_2a
    return-void

    .line 2158
    :cond_2b
    const/4 v6, 0x1

    .line 2159
    .local v6, "requireScientificRepresentation":Z
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 2160
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 2161
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v1

    .line 2162
    add-int/lit8 v1, v1, -0x1

    .line 2163
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2164
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_2a

    .line 2167
    :cond_47
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/MathContext;

    invoke-direct {v7, v1}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v0, v2, v3, v7}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 2168
    .local v0, "b":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 2169
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2171
    .local v4, "l":J
    cmpl-double v7, v2, v10

    if-ltz v7, :cond_b4

    int-to-double v8, v1

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v7, v2, v8

    if-gez v7, :cond_b4

    .line 2172
    long-to-double v8, v4

    int-to-double v10, v1

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_a0

    .line 2173
    const/4 v6, 0x0

    .line 2174
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v1, v7

    .line 2175
    if-gez v1, :cond_7d

    const/4 v1, 0x0

    .line 2176
    :cond_7d
    add-int/lit8 v7, v1, 0x1

    int-to-double v8, v7

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 2177
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_9b

    .line 2178
    add-int/lit8 v1, v1, 0x1

    .line 2180
    :cond_9b
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2197
    :cond_a0
    :goto_a0
    if-eqz v6, :cond_10d

    .line 2198
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v1

    .line 2199
    add-int/lit8 v1, v1, -0x1

    .line 2200
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2201
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto/16 :goto_2a

    .line 2183
    :cond_b4
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2184
    const-wide/high16 v8, -0x3ff0000000000000L    # -4.0

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v7, v2, v8

    if-ltz v7, :cond_a0

    cmpg-double v7, v2, v10

    if-gez v7, :cond_a0

    .line 2185
    const/4 v6, 0x0

    .line 2186
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    add-int/2addr v1, v7

    .line 2187
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2188
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_f3

    .line 2189
    add-int/lit8 v1, v1, 0x1

    .line 2191
    :cond_f3
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2192
    long-to-double v8, v4

    add-int/lit8 v7, v1, -0x4

    int-to-double v10, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_a0

    .line 2193
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    goto :goto_a0

    .line 2203
    :cond_10d
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto/16 :goto_2a
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x29

    const/4 v1, 0x0

    .line 1662
    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1663
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v0, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v0, :cond_26

    .line 1664
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 1665
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "result":Ljava/lang/StringBuilder;
    check-cast p1, Ljava/lang/StringBuilder;

    .line 1666
    .restart local p1    # "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1671
    :goto_25
    return-object p1

    .line 1668
    :cond_26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "result":Ljava/lang/StringBuilder;
    check-cast p1, Ljava/lang/StringBuilder;

    .restart local p1    # "result":Ljava/lang/StringBuilder;
    goto :goto_25
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 969
    iget-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    if-nez v1, :cond_14

    .line 970
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 972
    :try_start_7
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_14

    .line 973
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_15

    .line 979
    :cond_14
    :goto_14
    return-void

    .line 975
    :catch_15
    move-exception v0

    .line 976
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_14
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 949
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_10

    .line 951
    :try_start_9
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 956
    :cond_10
    :goto_10
    return-void

    .line 952
    :catch_11
    move-exception v0

    .line 953
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_10
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1011
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 6
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1038
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1040
    .local v0, "originalLocale":Ljava/util/Locale;
    if-nez p1, :cond_6

    :try_start_4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .end local p1    # "l":Ljava/util/Locale;
    :cond_6
    iput-object p1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1041
    iget-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    .line 1042
    invoke-direct {p0, p2, p3}, Ljava/util/Formatter;->doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_16

    .line 1044
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1046
    return-object p0

    .line 1044
    :catchall_16
    move-exception v1

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    throw v1
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 990
    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 910
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .registers 2

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 922
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 936
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 937
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
