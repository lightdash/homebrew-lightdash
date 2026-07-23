class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3471.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3471.0/lightdash-cli-0.3471.0-macos-arm64.tar.gz"
      sha256 "5d1f5913bbef7cda7b886da26e85ca0033cb392d3df2965db1678c475c9a4830"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3471.0/lightdash-cli-0.3471.0-macos-x64.tar.gz"
      sha256 "109450c13f8558a66f6b0b66ae09ee69b9ab0468ff8ea96c95da3f668d5b6752"
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
