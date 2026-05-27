class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3027.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3027.1/lightdash-cli-0.3027.1-macos-arm64.tar.gz"
      sha256 "813beb4c10ab6fa66734d9eddcc5270d64c3386559bd766f8ec154c86225259c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3027.1/lightdash-cli-0.3027.1-macos-x64.tar.gz"
      sha256 "db9b8a238b1a996f5d74ffeab77f1566e634c52864c5e6ecf2af6e7e47b41cfd"
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
