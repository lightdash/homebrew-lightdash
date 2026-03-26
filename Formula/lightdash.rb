class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2673.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2673.0/lightdash-cli-0.2673.0-macos-arm64.tar.gz"
      sha256 "a234eda6219ecd93448abddd103ae8611b3637ad8991fc704a752f354ce6e539"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2673.0/lightdash-cli-0.2673.0-macos-x64.tar.gz"
      sha256 "e0f6464ceea92efc29764786f6c76351f1c47c858d036056eb9a41d30ea95352"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
