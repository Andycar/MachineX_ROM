.class public Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
.super Ljava/lang/Object;
.source "ContextAwarePropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    }
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final booleanVal:[Z

.field private static charArrayVal:[C

.field private static doubleArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleArrayVal:[D

.field private static doubleHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleVal:D

.field private static floatArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static floatArrayVal:[F

.field private static floatHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static floatVal:F

.field private static integerArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static integerArrayVal:[I

.field private static integerHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static integerVal:I

.field private static longArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static longArrayVal:[J

.field private static longHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static longVal:J

.field private static stringArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringArrayVal:[Ljava/lang/String;

.field private static stringHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringVal:Ljava/lang/String;

.field private static type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    .line 719
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 551
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 552
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 553
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 554
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 555
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 556
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "input"    # Landroid/os/Parcel;

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 567
    return-void
.end method

.method static synthetic access$100()[Z
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    return-object v0
.end method

.method static synthetic access$1000()[F
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayVal:[F

    return-object v0
.end method

.method static synthetic access$1002([F)[F
    .registers 1
    .param p0, "x0"    # [F

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayVal:[F

    return-object p0
.end method

.method static synthetic access$1100()[D
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayVal:[D

    return-object v0
.end method

.method static synthetic access$1102([D)[D
    .registers 1
    .param p0, "x0"    # [D

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayVal:[D

    return-object p0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$1900()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1902(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return v0
.end method

.method static synthetic access$2000()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 28
    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return p0
.end method

.method static synthetic access$2100()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$2200()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300()J
    .registers 2

    .prologue
    .line 28
    sget-wide v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 28
    sput-wide p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide p0
.end method

.method static synthetic access$400()F
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return v0
.end method

.method static synthetic access$402(F)F
    .registers 1
    .param p0, "x0"    # F

    .prologue
    .line 28
    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return p0
.end method

.method static synthetic access$500()D
    .registers 2

    .prologue
    .line 28
    sget-wide v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .registers 2
    .param p0, "x0"    # D

    .prologue
    .line 28
    sput-wide p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()[C
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->charArrayVal:[C

    return-object v0
.end method

.method static synthetic access$702([C)[C
    .registers 1
    .param p0, "x0"    # [C

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->charArrayVal:[C

    return-object p0
.end method

.method static synthetic access$800()[I
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayVal:[I

    return-object v0
.end method

.method static synthetic access$802([I)[I
    .registers 1
    .param p0, "x0"    # [I

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayVal:[I

    return-object p0
.end method

.method static synthetic access$900()[J
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J

    return-object v0
.end method

.method static synthetic access$902([J)[J
    .registers 1
    .param p0, "x0"    # [J

    .prologue
    .line 28
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J

    return-object p0
.end method

.method public static getType()I
    .registers 1

    .prologue
    .line 950
    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->type:I

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 675
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 676
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 677
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 678
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 679
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 680
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 682
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 683
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 684
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 685
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 686
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 687
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 689
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 691
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 693
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 695
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 697
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 700
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 702
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 704
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 706
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 708
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 716
    return-void
.end method

.method private static setType(I)V
    .registers 1
    .param p0, "type"    # I

    .prologue
    .line 941
    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->type:I

    .line 942
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanTypeCode()I
    .registers 2

    .prologue
    .line 738
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCharArrayTypeCode()I
    .registers 2

    .prologue
    .line 792
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleArrayListTypeCode()I
    .registers 2

    .prologue
    .line 873
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleArrayTypeCode()I
    .registers 2

    .prologue
    .line 828
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleHashSetTypeCode()I
    .registers 2

    .prologue
    .line 918
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleTypeCode()I
    .registers 2

    .prologue
    .line 774
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatArrayListTypeCode()I
    .registers 2

    .prologue
    .line 864
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatArrayTypeCode()I
    .registers 2

    .prologue
    .line 819
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatHashSetTypeCode()I
    .registers 2

    .prologue
    .line 909
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatTypeCode()I
    .registers 2

    .prologue
    .line 765
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerArrayListTypeCode()I
    .registers 2

    .prologue
    .line 846
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerArrayTypeCode()I
    .registers 2

    .prologue
    .line 801
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerHashSetTypeCode()I
    .registers 2

    .prologue
    .line 891
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerTypeCode()I
    .registers 2

    .prologue
    .line 747
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongArrayListTypeCode()I
    .registers 2

    .prologue
    .line 855
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongArrayTypeCode()I
    .registers 2

    .prologue
    .line 810
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongHashSetTypeCode()I
    .registers 2

    .prologue
    .line 900
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongTypeCode()I
    .registers 2

    .prologue
    .line 756
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringArrayListTypeCode()I
    .registers 2

    .prologue
    .line 882
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringArrayTypeCode()I
    .registers 2

    .prologue
    .line 837
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringHashSetTypeCode()I
    .registers 2

    .prologue
    .line 927
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringTypeCode()I
    .registers 2

    .prologue
    .line 783
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 576
    const/4 v4, 0x0

    .line 577
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 578
    .local v1, "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_1a

    .line 579
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 584
    .end local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    :cond_19
    return-object v4

    .line 577
    .restart local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .restart local v4    # "value":Ljava/lang/Object;, "TE;"
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public setValue(ILjava/lang/Object;)V
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 597
    .local v1, "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v4

    if-ne p1, v4, :cond_17

    .line 598
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 599
    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 603
    .end local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_16
    return-void

    .line 596
    .restart local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 623
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 624
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 626
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 627
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 628
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 631
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 632
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 633
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 634
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 636
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 641
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 643
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 645
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 647
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 650
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 652
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 654
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 656
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 658
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 664
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    return-void
.end method
