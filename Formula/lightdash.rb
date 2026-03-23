class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2654.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2654.0/lightdash-cli-0.2654.0-macos-arm64.tar.gz"
      sha256 "056c4cb1875d921bab67df90b810df25766f8391e8f90132ec879cc11b00cd21"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2654.0/lightdash-cli-0.2654.0-macos-x64.tar.gz"
      sha256 "ad89e67536ae9647c4093fb0796bba3c860e45d13716d8732d5e872530fb53ad"
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
