.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final mInfo:Landroid/print/PrintDocumentInfo;

.field private final mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .registers 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "printServiceClient"    # Landroid/printservice/IPrintServiceClient;
    .param p3, "info"    # Landroid/print/PrintDocumentInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    .line 48
    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 49
    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    .line 50
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/ParcelFileDescriptor;
    .registers 8

    .prologue
    .line 73
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 77
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 78
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    aget-object v4, v0, v5

    .line 79
    const/4 v5, 0x1

    aget-object v3, v0, v5

    .line 80
    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v5, v3, v6}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_2c
    .catchall {:try_start_5 .. :try_end_16} :catchall_3c

    .line 87
    if-eqz v3, :cond_1b

    .line 89
    :try_start_18
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_43

    :cond_1b
    :goto_1b
    move-object v5, v4

    .line 95
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    :goto_1c
    return-object v5

    .line 82
    :catch_1d
    move-exception v1

    .line 83
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1e
    const-string v5, "PrintDocument"

    const-string v6, "Error calling getting print job data!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_3c

    .line 87
    if-eqz v3, :cond_2a

    .line 89
    :try_start_27
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_45

    .line 95
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2a
    :goto_2a
    const/4 v5, 0x0

    goto :goto_1c

    .line 84
    :catch_2c
    move-exception v2

    .line 85
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2d
    const-string v5, "PrintDocument"

    const-string v6, "Error calling getting print job data!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 87
    if-eqz v3, :cond_2a

    .line 89
    :try_start_36
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_2a

    .line 90
    :catch_3a
    move-exception v5

    goto :goto_2a

    .line 87
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_3c
    move-exception v5

    if-eqz v3, :cond_42

    .line 89
    :try_start_3f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_47

    .line 92
    :cond_42
    :goto_42
    throw v5

    .line 90
    .restart local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_43
    move-exception v5

    goto :goto_1b

    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "ioe":Ljava/io/IOException;
    :catch_45
    move-exception v5

    goto :goto_2a

    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_47
    move-exception v6

    goto :goto_42
.end method

.method public getInfo()Landroid/print/PrintDocumentInfo;
    .registers 2

    .prologue
    .line 58
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 59
    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
