class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3049.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.1/lightdash-cli-0.3049.1-macos-arm64.tar.gz"
      sha256 "235106f46884221eded831f4f399deebfd57a392aa503efff3aa0ebc0311d04f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.1/lightdash-cli-0.3049.1-macos-x64.tar.gz"
      sha256 "1a9d948f329a7b5832de98b5d1c6f33b200129a23f1e0631c67f3e288d0b0434"
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
