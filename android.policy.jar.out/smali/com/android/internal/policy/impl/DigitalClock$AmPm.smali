.class Lcom/android/internal/policy/impl/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/AndroidClockTextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const v1, 0x20e0002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/AndroidClockTextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mAmPm:Lcom/android/internal/policy/impl/AndroidClockTextView;

    .line 113
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 115
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mAmPm:Lcom/android/internal/policy/impl/AndroidClockTextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/AndroidClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->mAmPm:Lcom/android/internal/policy/impl/AndroidClockTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/AndroidClockTextView;->setVisibility(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
