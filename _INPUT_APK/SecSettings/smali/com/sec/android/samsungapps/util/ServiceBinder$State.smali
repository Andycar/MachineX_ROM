.class final enum Lcom/sec/android/samsungapps/util/ServiceBinder$State;
.super Ljava/lang/Enum;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/samsungapps/util/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/samsungapps/util/ServiceBinder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/samsungapps/util/ServiceBinder$State;

.field public static final enum FAILED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

.field public static final enum IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

.field public static final enum INIT:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

.field public static final enum PREPARED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

.field public static final enum RELEASING:Lcom/sec/android/samsungapps/util/ServiceBinder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .line 15
    new-instance v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->INIT:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .line 16
    new-instance v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->FAILED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .line 17
    new-instance v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->PREPARED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    new-instance v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    const-string v1, "RELEASING"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->RELEASING:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->INIT:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->FAILED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->PREPARED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->RELEASING:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ENUM$VALUES:[Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/samsungapps/util/ServiceBinder$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/samsungapps/util/ServiceBinder$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ENUM$VALUES:[Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
