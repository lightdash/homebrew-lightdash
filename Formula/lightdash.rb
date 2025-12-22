class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.2/lightdash-cli-0.2270.2-macos-arm64.tar.gz"
      sha256 "b5c215c27bab5ab3483551c32bd89a461592af892c0fc3d92545a7f34a863807"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.2/lightdash-cli-0.2270.2-macos-x64.tar.gz"
      sha256 "33522b3f6b0b8fff389f8c3ae00d35b8fb3bb1175118c9d97284fb5258f09d69"
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
