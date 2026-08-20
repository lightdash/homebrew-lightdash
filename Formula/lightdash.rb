class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.212.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.0/lightdash-cli-1.212.0-macos-arm64.tar.gz"
      sha256 "f6ac24d66e133b7f37783beb81a6efcba49690716cb0fb21d8d84ec19285d668"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.0/lightdash-cli-1.212.0-macos-x64.tar.gz"
      sha256 "466616c9ca336686099664a33f7fc17f067862b8403d321dd4158154968b7ba6"
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
