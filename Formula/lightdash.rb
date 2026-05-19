class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2976.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.2/lightdash-cli-0.2976.2-macos-arm64.tar.gz"
      sha256 "08d2571cdd2d27411ca06895ce38e55d8891036a4404b78af3a002a8ad8bc01f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.2/lightdash-cli-0.2976.2-macos-x64.tar.gz"
      sha256 "9e2952830fc70f3ed4eb676fd78cc2c088b0790f595e70d51a80f025387d45dc"
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
