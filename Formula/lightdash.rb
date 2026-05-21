class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3000.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3000.0/lightdash-cli-0.3000.0-macos-arm64.tar.gz"
      sha256 "a29ae3252f68d657db6354b9a20da95e3812df76ca24cee53088bf8616962408"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3000.0/lightdash-cli-0.3000.0-macos-x64.tar.gz"
      sha256 "1f337c88ab1ebcba793921afb6f50194a813b0ea1cf17228735633ce7a00dbdb"
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
