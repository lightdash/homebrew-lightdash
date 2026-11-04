class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.146.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.146.1/lightdash-cli-3.146.1-macos-arm64.tar.gz"
      sha256 "9f3c781e65f6e173c45880e33bb65067a26a8a625b9af10326fa75eb665f4f6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.146.1/lightdash-cli-3.146.1-macos-x64.tar.gz"
      sha256 "028fb86fa4b8ff793cd319cedc2c241a08d239bd14055941ed32fa9ad86d264f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.146.1/lightdash-cli-3.146.1-linux-x64.tar.gz"
    sha256 "dbc9a731861ae50cbd67e67881ab411bc20327d670032a7a5ada2048310c977f"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
