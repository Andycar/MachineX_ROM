.class public Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeDowntimeDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "EEEE"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    .line 46
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 48
    .local v4, "hPad":I
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v9, v4, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 49
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->addView(Landroid/view/View;)V

    .line 50
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v3

    .line 51
    .local v3, "days":[I
    if-eqz v3, :cond_0

    .line 52
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_0

    .line 53
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v8, v3, v5

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    .end local v5    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 59
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    sget-object v7, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 60
    sget-object v7, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v2, v7, v5

    .line 61
    .local v2, "day":I
    const v7, 0x7f040296

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 63
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 64
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    new-instance v7, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;I)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "day":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "days:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 81
    .local v1, "empty":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 83
    .local v0, "day":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x0

    .line 89
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 91
    .end local v0    # "day":I
    :cond_2
    if-eqz v1, :cond_3

    const/4 v4, 0x0

    :goto_3
    return-object v4

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method


# virtual methods
.method protected onChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 96
    return-void
.end method
