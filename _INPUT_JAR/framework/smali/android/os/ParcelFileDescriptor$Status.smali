.class Landroid/os/ParcelFileDescriptor$Status;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# static fields
.field public static final DEAD:I = -0x2

.field public static final DETACHED:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final LEAKED:I = 0x3

.field public static final OK:I = 0x0

.field public static final SILENCE:I = -0x1


# instance fields
.field public final msg:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 979
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    .line 980
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    iput p1, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    .line 984
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    .line 985
    return-void
.end method


# virtual methods
.method public asIOException()Ljava/io/IOException;
    .registers 4

    .prologue
    .line 988
    iget v0, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    packed-switch v0, :pswitch_data_54

    .line 1000
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_1f
    return-object v0

    .line 990
    :pswitch_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote side is dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 992
    :pswitch_28
    const/4 v0, 0x0

    goto :goto_1f

    .line 994
    :pswitch_2a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 996
    :pswitch_45
    new-instance v0, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;-><init>()V

    goto :goto_1f

    .line 998
    :pswitch_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote side was leaked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 988
    nop

    :pswitch_data_54
    .packed-switch -0x2
        :pswitch_20
        :pswitch_5
        :pswitch_28
        :pswitch_2a
        :pswitch_45
        :pswitch_4b
    .end packed-switch
.end method
