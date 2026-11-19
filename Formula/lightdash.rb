class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.327.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.3/lightdash-cli-3.327.3-macos-arm64.tar.gz"
      sha256 "2552645e872890bedd85d4bcec53b2d55fc149043bd68df3ee0060b86c2a3099"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.3/lightdash-cli-3.327.3-macos-x64.tar.gz"
      sha256 "1f91de4aa73d9faabb6ba5d857c1194f7a2080b91e8a1ef896dbc7932d5a905d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.327.3/lightdash-cli-3.327.3-linux-x64.tar.gz"
    sha256 "bde9616dbeb6d68af061bb58d15f7b0a50312fbdf3f3b798763dbce201c06d61"

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
