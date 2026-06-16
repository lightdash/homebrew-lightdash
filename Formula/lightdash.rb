class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3170.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3170.2/lightdash-cli-0.3170.2-macos-arm64.tar.gz"
      sha256 "5558819390727cd6c3c02299a9b7e1c90a711742a2f435f7e98c5f544c448023"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3170.2/lightdash-cli-0.3170.2-macos-x64.tar.gz"
      sha256 "f55b9dda546700c6d9a8fc28c19c4250a45faef318e562d3deb0c1a7a558bc43"
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
