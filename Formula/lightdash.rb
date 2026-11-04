class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.150.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.150.0/lightdash-cli-3.150.0-macos-arm64.tar.gz"
      sha256 "825fcb07ccdbbdd7812c9b9555a9f5a6f6d47247eebd28b69325c0b036166db5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.150.0/lightdash-cli-3.150.0-macos-x64.tar.gz"
      sha256 "8f343a4e71322ecea31b264cd2f7fece20002c23ec664ca83d14c9ef4593a593"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.150.0/lightdash-cli-3.150.0-linux-x64.tar.gz"
    sha256 "53c10618ccd3ff27ffca84e91d92c54ccf9dda572e59f9a4ec0d175591078242"

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
