.class Ljava/text/MessageFormat$FieldContainer;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldContainer"
.end annotation


# instance fields
.field attribute:Ljava/text/AttributedCharacterIterator$Attribute;

.field end:I

.field start:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput p1, p0, Ljava/text/MessageFormat$FieldContainer;->start:I

    .line 634
    iput p2, p0, Ljava/text/MessageFormat$FieldContainer;->end:I

    .line 635
    iput-object p3, p0, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 636
    iput-object p4, p0, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    .line 637
    return-void
.end method
