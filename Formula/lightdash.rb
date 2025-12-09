class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2236.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2236.2/lightdash-cli-0.2236.2-macos-arm64.tar.gz"
      sha256 "b0beaf652aa63bd88521a44053e541a2aed74857d9afc2f508ae84325527b5ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2236.2/lightdash-cli-0.2236.2-macos-x64.tar.gz"
      sha256 "72ceb20ee35b76b73451a8a3ee90c56c1fc09d12bea7572007397ea5477412e1"
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
