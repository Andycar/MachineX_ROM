.class Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatWindowMode"
.end annotation


# instance fields
.field mOption:I

.field mType:I

.field mZone:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "zone"    # I
    .param p4, "option"    # I

    .prologue
    .line 887
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput p2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mType:I

    .line 889
    iput p3, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mZone:I

    .line 890
    iput p4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    .line 891
    return-void
.end method


# virtual methods
.method getCurrentMode()I
    .registers 3

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getZone()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getMode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getOption()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getMode()I
    .registers 3

    .prologue
    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, "mode":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mType:I

    if-nez v1, :cond_8

    .line 896
    const/high16 v0, 0x1000000

    .line 900
    :goto_7
    return v0

    .line 898
    :cond_8
    const/high16 v0, 0x2000000

    goto :goto_7
.end method

.method getOption()I
    .registers 3

    .prologue
    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "option":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 937
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 939
    :cond_a
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 940
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 942
    :cond_13
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1c

    .line 943
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 945
    :cond_1c
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_25

    .line 946
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 948
    :cond_25
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2e

    .line 949
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 951
    :cond_2e
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_37

    .line 952
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 954
    :cond_37
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3f

    .line 955
    or-int/lit16 v0, v0, 0x1000

    .line 957
    :cond_3f
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_47

    .line 958
    or-int/lit16 v0, v0, 0x800

    .line 960
    :cond_47
    return v0
.end method

.method getZone()I
    .registers 3

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "zone":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mZone:I

    packed-switch v1, :pswitch_data_1a

    .line 928
    :pswitch_6
    const/4 v0, 0x0

    .line 931
    :goto_7
    return v0

    .line 907
    :pswitch_8
    const/16 v0, 0xf

    .line 908
    goto :goto_7

    .line 910
    :pswitch_b
    const/4 v0, 0x3

    .line 911
    goto :goto_7

    .line 913
    :pswitch_d
    const/16 v0, 0xc

    .line 914
    goto :goto_7

    .line 916
    :pswitch_10
    const/4 v0, 0x1

    .line 917
    goto :goto_7

    .line 919
    :pswitch_12
    const/4 v0, 0x2

    .line 920
    goto :goto_7

    .line 922
    :pswitch_14
    const/4 v0, 0x4

    .line 923
    goto :goto_7

    .line 925
    :pswitch_16
    const/16 v0, 0x8

    .line 926
    goto :goto_7

    .line 905
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
        :pswitch_b
        :pswitch_14
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_16
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
