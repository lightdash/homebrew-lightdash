class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2950.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.2/lightdash-cli-0.2950.2-macos-arm64.tar.gz"
      sha256 "f21a14fedd081c130b59a34afca194cd8f1d046bb0b1bf1eab508b6f3903ec29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.2/lightdash-cli-0.2950.2-macos-x64.tar.gz"
      sha256 "38e34fe31a1276ac532094a185096e0033e09f1ad92b06fcc0ec5a59adbd34a7"
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
