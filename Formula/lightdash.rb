class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2632.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2632.0/lightdash-cli-0.2632.0-macos-arm64.tar.gz"
      sha256 "b0fa90ef7a9380d1c6d010ab6d9d6ed2d5cb8c75d95035b1dbacb767d9105131"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2632.0/lightdash-cli-0.2632.0-macos-x64.tar.gz"
      sha256 "321b9c20e88869bdbc90cd1aaafd3988d4d11466d58e50c975b33924dcf731e1"
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
