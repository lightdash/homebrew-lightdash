class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3482.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3482.0/lightdash-cli-0.3482.0-macos-arm64.tar.gz"
      sha256 "42e3632bcc5e723f63ee332d31e03467581f7fadd05dbe853a36ecda10ee30ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3482.0/lightdash-cli-0.3482.0-macos-x64.tar.gz"
      sha256 "d7779ff8b6d50d33a32989d708ad4a798b4901361d0a4cbd08a740dcab1e6e48"
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
