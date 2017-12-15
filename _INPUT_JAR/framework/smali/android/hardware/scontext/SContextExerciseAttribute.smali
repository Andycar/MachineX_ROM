.class public Landroid/hardware/scontext/SContextExerciseAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextExerciseAttribute.java"


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextExerciseAttribute"


# instance fields
.field private mRequiredDataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    .line 33
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    .line 35
    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 37
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    .line 46
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "requiredDataType"    # [I

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 37
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 64
    iput-object p1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 65
    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    .line 66
    return-void
.end method

.method private setAttribute()V
    .registers 8

    .prologue
    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, "Required data type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3c

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "required_data":I
    if-eqz v1, :cond_19

    .line 96
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_19
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_56

    .line 114
    :goto_20
    or-int/2addr v3, v2

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 100
    :pswitch_24
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    .line 101
    const-string v5, "GPS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 104
    :pswitch_2c
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    .line 105
    const-string v5, "Barometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 108
    :pswitch_34
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    .line 109
    const-string v5, "Pedometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 116
    .end local v2    # "required_data":I
    :cond_3c
    const-string v5, "SContextExerciseAttribute"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v5, "required_data_type"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const/16 v5, 0x26

    invoke-super {p0, v5, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 120
    return-void

    .line 98
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method checkAttribute()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v5, v5

    if-ge v0, v5, :cond_48

    .line 73
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v0

    if-lt v5, v4, :cond_1a

    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_22

    .line 75
    :cond_1a
    const-string v4, "SContextExerciseAttribute"

    const-string v5, "The required data type is wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_21
    return v3

    .line 78
    :cond_22
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    if-ge v1, v0, :cond_45

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_42

    .line 81
    const-string v4, "SContextExerciseAttribute"

    const-string v5, "This required data type cannot have duplicated type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 79
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 72
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v1    # "j":I
    :cond_48
    move v3, v4

    .line 86
    goto :goto_21
.end method
