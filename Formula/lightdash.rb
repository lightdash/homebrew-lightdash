class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2388.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2388.1/lightdash-cli-0.2388.1-macos-arm64.tar.gz"
      sha256 "68155695b708fad854fe5ec3a1c5dfb684f454db493be4d2f837ba3a164f69f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2388.1/lightdash-cli-0.2388.1-macos-x64.tar.gz"
      sha256 "5a00d8433faade9f617617b38efd598fb8522031c22011b8136b616ab4d7dd83"
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
