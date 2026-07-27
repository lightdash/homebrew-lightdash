class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3481.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3481.0/lightdash-cli-0.3481.0-macos-arm64.tar.gz"
      sha256 "784974bd8375071d149424c5bf51a34056e10c08660ad402cfb623e1cfe248a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3481.0/lightdash-cli-0.3481.0-macos-x64.tar.gz"
      sha256 "e525f060c6249f1e0db2f3f80943b1efb863867905c5ef8c3ccf7f00f0aeffc6"
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
