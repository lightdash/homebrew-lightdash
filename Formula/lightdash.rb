class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.386.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.386.2/lightdash-cli-2.386.2-macos-arm64.tar.gz"
      sha256 "a2be4d7e0ac0ba7868fc9ec699fdeff0b7617c0c8dbd20bf613b36924c8423a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.386.2/lightdash-cli-2.386.2-macos-x64.tar.gz"
      sha256 "32cbddd4bbfba2c93062685c726b0c10224efb2d9e2886d544ade9b951954eac"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.386.2/lightdash-cli-2.386.2-linux-x64.tar.gz"
    sha256 "faadcf4a8272f452c02341d95270a142ac441ae10394d693e1330a9cccd7b17e"

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
