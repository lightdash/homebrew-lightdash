class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2991.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2991.0/lightdash-cli-0.2991.0-macos-arm64.tar.gz"
      sha256 "151af7399ed4ad6b0283c7cf83d74d984bfc0078806e9ac88d7e2732a4a39007"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2991.0/lightdash-cli-0.2991.0-macos-x64.tar.gz"
      sha256 "e8345c14454dde0b964c423bd14a4d117729c2d4d7c80db7eb3005b8c47d4506"
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
