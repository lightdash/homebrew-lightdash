class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2185.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2185.0/lightdash-cli-0.2185.0-macos-arm64.tar.gz"
      sha256 "f4fbe7cacf41fa86d6da22345e6ce6d187e51edea349ea388f46c7297155ff29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2185.0/lightdash-cli-0.2185.0-macos-x64.tar.gz"
      sha256 "0cc3349902aeff6ed3563386688755c4ac8e21f119d34897c8765141116eb2a3"
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
