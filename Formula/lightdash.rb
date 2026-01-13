class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2331.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.1/lightdash-cli-0.2331.1-macos-arm64.tar.gz"
      sha256 "805d0ffbc60ac7cb7318a11851b56761cd5f262561879acf5a45ae6466d0f1e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.1/lightdash-cli-0.2331.1-macos-x64.tar.gz"
      sha256 "0fd79ee56596c8e77f85e5051244b19dbf30b24d75781737fff14bc8266ea6bc"
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
