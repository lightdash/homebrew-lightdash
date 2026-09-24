class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.318.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.318.1/lightdash-cli-2.318.1-macos-arm64.tar.gz"
      sha256 "082422e8e59828a4ae95f32d782767ec51580e3d35adbb851b625b5159489623"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.318.1/lightdash-cli-2.318.1-macos-x64.tar.gz"
      sha256 "bc3ef117508eb6eca9c70ffc1898fea082e1aeec5354733cf058bcfc4d05d905"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.318.1/lightdash-cli-2.318.1-linux-x64.tar.gz"
    sha256 "bc85d8147446b88dbf6a8b230c35f8d09d08086ac01851121253525b4fd5fadd"

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
