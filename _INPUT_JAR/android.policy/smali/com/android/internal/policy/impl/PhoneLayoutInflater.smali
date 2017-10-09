.class public Lcom/android/internal/policy/impl/PhoneLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "PhoneLayoutInflater.java"


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.app."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 3
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 55
    .local v3, "prefix":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_f

    move-result-object v4

    .line 56
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_10

    .line 65
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :goto_e
    return-object v4

    .line 59
    .restart local v3    # "prefix":Ljava/lang/String;
    :catch_f
    move-exception v5

    .line 53
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 65
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    goto :goto_e
.end method
