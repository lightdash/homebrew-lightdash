class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2658.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2658.1/lightdash-cli-0.2658.1-macos-arm64.tar.gz"
      sha256 "da423016285481503c37b2f08397f33c7267e3c011db70d23e0cbeed4a3210c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2658.1/lightdash-cli-0.2658.1-macos-x64.tar.gz"
      sha256 "ae52b1e49cadb8ece3925d045dc64f20685ad8fdcc6978fa96161d56af67cb5f"
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
