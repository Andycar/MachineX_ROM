.class Lcom/android/settings/wfd/WifiDisplaySettings$20;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 1743
    if-le p3, p2, :cond_1

    .line 1744
    const/16 v2, 0x5c

    new-array v0, v2, [C

    fill-array-data v0, :array_0

    .line 1750
    .local v0, "acceptedChars":[C
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1751
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1752
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const v4, 0x7f0a0643

    invoke-virtual {v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1753
    const-string v2, ""

    .line 1757
    .end local v0    # "acceptedChars":[C
    .end local v1    # "index":I
    :goto_1
    return-object v2

    .line 1750
    .restart local v0    # "acceptedChars":[C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1757
    .end local v0    # "acceptedChars":[C
    .end local v1    # "index":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1744
    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x40s
        0x2es
        0x5fs
        0x24s
        0x25s
        0x26s
        0x2as
        0x2ds
        0x2bs
        0x28s
        0x29s
        0x21s
        0x5cs
        0x3as
        0x3bs
        0x2fs
        0x3fs
        0x2cs
        0x7es
        0x60s
        0x5es
        0x3cs
        0x3es
        0x5bs
        0x5ds
        0x3ds
        0x2es
        0x20s
        0x22s
        0x27s
    .end array-data
.end method
