class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3406.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3406.2/lightdash-cli-0.3406.2-macos-arm64.tar.gz"
      sha256 "63cd72a239310661111475487e4f5cdd56bf32f2f5c289dc9e11be0f72f78d70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3406.2/lightdash-cli-0.3406.2-macos-x64.tar.gz"
      sha256 "fe0901b0135ea9d61544415a21a4072ff585b707fa7f7926c1d09f4827cd36f8"
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
