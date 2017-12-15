.class public Landroid/bluetooth/BluetoothDump;
.super Ljava/lang/Object;
.source "BluetoothDump.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDump"

.field private static final VDBG:Z

.field static day:Ljava/lang/String;

.field static hour:Ljava/lang/String;

.field private static lineFeed:Ljava/lang/String;

.field static milisec:Ljava/lang/String;

.field static min:Ljava/lang/String;

.field static month:Ljava/lang/String;

.field static sec:Ljava/lang/String;

.field private static sysdump_time:Ljava/lang/String;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "\n"

    sput-object v0, Landroid/bluetooth/BluetoothDump;->lineFeed:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static BtLog(Ljava/lang/String;)V
    .registers 5
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/bluetooth/BluetoothDump;->getTimeToString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->lineFeed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    .local v1, "oneLine":Ljava/lang/StringBuilder;
    new-instance v0, Landroid/bluetooth/BluetoothDump;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDump;-><init>()V

    .line 53
    .local v0, "bdump":Landroid/bluetooth/BluetoothDump;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDump;->putLogs(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static getTimeToString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "00"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 68
    .local v1, "df":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "000"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 69
    .local v2, "df3":Ljava/text/DecimalFormat;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->month:Ljava/lang/String;

    .line 70
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->day:Ljava/lang/String;

    .line 71
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->hour:Ljava/lang/String;

    .line 72
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->min:Ljava/lang/String;

    .line 73
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->sec:Ljava/lang/String;

    .line 74
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->milisec:Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/bluetooth/BluetoothDump;->hour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/bluetooth/BluetoothDump;->min:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/bluetooth/BluetoothDump;->sec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/bluetooth/BluetoothDump;->milisec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/bluetooth/BluetoothDump;->sysdump_time:Ljava/lang/String;

    .line 76
    sget-object v3, Landroid/bluetooth/BluetoothDump;->sysdump_time:Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public putLogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 59
    iget-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_f

    .line 60
    iget-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->putLogs(Ljava/lang/String;)V

    .line 62
    :cond_f
    return-void
.end method
